#using module "D:\Tools\~scripts.ps\avvClasses\classes\avvBase.ps1"
<# =========================
khv/dev
kms/dev
1
2
#>

. "$($env:AVVPATHCLASSES)\avvBase.ps1"
#. 'D:\Tools\~scripts.ps\avvClasses\classes\avvBase.ps1'

class testClass : avvBase
{
	$p1='qwe';
	testClass() {}
	testClass([Hashtable]$p) : base($p) {}
}
Clear-Variable t

#$t=[testClass]::new(@{'_obj_'=@{'p1'='zxc'};_obj_add_=@{'f1'=1;f2='vvv';f4=@{'f'='v';e='v'}};obj_add_value_=@{f4=@{'v'='v';n='n'}};})
$t=[testClass]::new(@{
        '_obj_'=@{'p1'='zxc'};
        _obj_add_=@{'f1'=1;f2='vvv';f4=@{'f'='v';e='v'}};
        _obj_add_value_=@{f4=@{'v'='v';z='v'};f1=3;f2='RRR'};
    }
)
$t


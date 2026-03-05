import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_dml_auth_setting.dart';
import 'account_state.dart';

/// Provides a Click House Enterprise Db Cluster Account resource.
///
/// Clickhouse enterprise instance account.
///
/// For information about Click House Enterprise Db Cluster Account and how to use it, see [What is Enterprise Db Cluster Account](https://next.api.alibabacloud.com/document/clickhouse/2023-05-22/CreateAccount).
///
/// &gt; **NOTE:** Available since v1.247.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const regionId = config.get("regionId") || "cn-beijing";
/// const vswIpRangeI = config.get("vswIpRangeI") || "172.16.1.0/24";
/// const vpcIpRange = config.get("vpcIpRange") || "172.16.0.0/12";
/// const zoneIdI = config.get("zoneIdI") || "cn-beijing-i";
/// const defaultktKLuM = new alicloud.vpc.Network("defaultktKLuM", {cidrBlock: vpcIpRange});
/// const defaultTQWN3k = new alicloud.vpc.Switch("defaultTQWN3k", {
///     vpcId: defaultktKLuM.id,
///     zoneId: zoneIdI,
///     cidrBlock: vswIpRangeI,
/// });
/// const defaultWrovOd = new alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultWrovOd", {
///     zoneId: zoneIdI,
///     vpcId: defaultktKLuM.id,
///     scaleMin: "8",
///     scaleMax: "16",
///     vswitchId: defaultTQWN3k.id,
/// });
/// const _default = new alicloud.clickhouseenterprisedbcluster.Account("default", {
///     account: "abc",
///     description: "example_desc",
///     dbInstanceId: defaultWrovOd.id,
///     accountType: "NormalAccount",
///     password: "abc123456!",
///     dmlAuthSetting: {
///         dmlAuthority: 0,
///         ddlAuthority: true,
///         allowDictionaries: ["*"],
///         allowDatabases: ["*"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-beijing"
/// vsw_ip_range_i = config.get("vswIpRangeI")
/// if vsw_ip_range_i is None:
///     vsw_ip_range_i = "172.16.1.0/24"
/// vpc_ip_range = config.get("vpcIpRange")
/// if vpc_ip_range is None:
///     vpc_ip_range = "172.16.0.0/12"
/// zone_id_i = config.get("zoneIdI")
/// if zone_id_i is None:
///     zone_id_i = "cn-beijing-i"
/// defaultkt_k_lu_m = alicloud.vpc.Network("defaultktKLuM", cidr_block=vpc_ip_range)
/// default_tqwn3k = alicloud.vpc.Switch("defaultTQWN3k",
///     vpc_id=defaultkt_k_lu_m.id,
///     zone_id=zone_id_i,
///     cidr_block=vsw_ip_range_i)
/// default_wrov_od = alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultWrovOd",
///     zone_id=zone_id_i,
///     vpc_id=defaultkt_k_lu_m.id,
///     scale_min="8",
///     scale_max="16",
///     vswitch_id=default_tqwn3k.id)
/// default = alicloud.clickhouseenterprisedbcluster.Account("default",
///     account="abc",
///     description="example_desc",
///     db_instance_id=default_wrov_od.id,
///     account_type="NormalAccount",
///     password="abc123456!",
///     dml_auth_setting={
///         "dml_authority": 0,
///         "ddl_authority": True,
///         "allow_dictionaries": ["*"],
///         "allow_databases": ["*"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var regionId = config.Get("regionId") ?? "cn-beijing";
///     var vswIpRangeI = config.Get("vswIpRangeI") ?? "172.16.1.0/24";
///     var vpcIpRange = config.Get("vpcIpRange") ?? "172.16.0.0/12";
///     var zoneIdI = config.Get("zoneIdI") ?? "cn-beijing-i";
///     var defaultktKLuM = new AliCloud.Vpc.Network("defaultktKLuM", new()
///     {
///         CidrBlock = vpcIpRange,
///     });
///
///     var defaultTQWN3k = new AliCloud.Vpc.Switch("defaultTQWN3k", new()
///     {
///         VpcId = defaultktKLuM.Id,
///         ZoneId = zoneIdI,
///         CidrBlock = vswIpRangeI,
///     });
///
///     var defaultWrovOd = new AliCloud.ClickHouseEnterpriseDbCluster.ClickHouseEnterpriseDbCluster("defaultWrovOd", new()
///     {
///         ZoneId = zoneIdI,
///         VpcId = defaultktKLuM.Id,
///         ScaleMin = "8",
///         ScaleMax = "16",
///         VswitchId = defaultTQWN3k.Id,
///     });
///
///     var @default = new AliCloud.ClickHouseEnterpriseDbCluster.Account("default", new()
///     {
///         AccountValue = "abc",
///         Description = "example_desc",
///         DbInstanceId = defaultWrovOd.Id,
///         AccountType = "NormalAccount",
///         Password = "abc123456!",
///         DmlAuthSetting = new AliCloud.clickHouseEnterpriseDbCluster.Inputs.AccountDmlAuthSettingArgs
///         {
///             DmlAuthority = 0,
///             DdlAuthority = true,
///             AllowDictionaries = new[]
///             {
///                 "*",
///             },
///             AllowDatabases = new[]
///             {
///                 "*",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouseenterprisedbcluster"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		regionId := "cn-beijing"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		vswIpRangeI := "172.16.1.0/24"
/// 		if param := cfg.Get("vswIpRangeI"); param != "" {
/// 			vswIpRangeI = param
/// 		}
/// 		vpcIpRange := "172.16.0.0/12"
/// 		if param := cfg.Get("vpcIpRange"); param != "" {
/// 			vpcIpRange = param
/// 		}
/// 		zoneIdI := "cn-beijing-i"
/// 		if param := cfg.Get("zoneIdI"); param != "" {
/// 			zoneIdI = param
/// 		}
/// 		defaultktKLuM, err := vpc.NewNetwork(ctx, "defaultktKLuM", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String(vpcIpRange),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTQWN3k, err := vpc.NewSwitch(ctx, "defaultTQWN3k", &vpc.SwitchArgs{
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			CidrBlock: pulumi.String(vswIpRangeI),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWrovOd, err := clickhouseenterprisedbcluster.NewClickHouseEnterpriseDbCluster(ctx, "defaultWrovOd", &clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs{
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ScaleMin:  pulumi.String("8"),
/// 			ScaleMax:  pulumi.String("16"),
/// 			VswitchId: defaultTQWN3k.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouseenterprisedbcluster.NewAccount(ctx, "default", &clickhouseenterprisedbcluster.AccountArgs{
/// 			Account:      pulumi.String("abc"),
/// 			Description:  pulumi.String("example_desc"),
/// 			DbInstanceId: defaultWrovOd.ID(),
/// 			AccountType:  pulumi.String("NormalAccount"),
/// 			Password:     pulumi.String("abc123456!"),
/// 			DmlAuthSetting: &clickhouseenterprisedbcluster.AccountDmlAuthSettingArgs{
/// 				DmlAuthority: pulumi.Int(0),
/// 				DdlAuthority: pulumi.Bool(true),
/// 				AllowDictionaries: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 				AllowDatabases: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.Account;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.AccountArgs;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.inputs.AccountDmlAuthSettingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var regionId = config.get("regionId").orElse("cn-beijing");
///         final var vswIpRangeI = config.get("vswIpRangeI").orElse("172.16.1.0/24");
///         final var vpcIpRange = config.get("vpcIpRange").orElse("172.16.0.0/12");
///         final var zoneIdI = config.get("zoneIdI").orElse("cn-beijing-i");
///         var defaultktKLuM = new Network("defaultktKLuM", NetworkArgs.builder()
///             .cidrBlock(vpcIpRange)
///             .build());
///
///         var defaultTQWN3k = new Switch("defaultTQWN3k", SwitchArgs.builder()
///             .vpcId(defaultktKLuM.id())
///             .zoneId(zoneIdI)
///             .cidrBlock(vswIpRangeI)
///             .build());
///
///         var defaultWrovOd = new ClickHouseEnterpriseDbCluster("defaultWrovOd", ClickHouseEnterpriseDbClusterArgs.builder()
///             .zoneId(zoneIdI)
///             .vpcId(defaultktKLuM.id())
///             .scaleMin("8")
///             .scaleMax("16")
///             .vswitchId(defaultTQWN3k.id())
///             .build());
///
///         var default_ = new Account("default", AccountArgs.builder()
///             .account("abc")
///             .description("example_desc")
///             .dbInstanceId(defaultWrovOd.id())
///             .accountType("NormalAccount")
///             .password("abc123456!")
///             .dmlAuthSetting(AccountDmlAuthSettingArgs.builder()
///                 .dmlAuthority(0)
///                 .ddlAuthority(true)
///                 .allowDictionaries("*")
///                 .allowDatabases("*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   regionId:
///     type: string
///     default: cn-beijing
///   vswIpRangeI:
///     type: string
///     default: 172.16.1.0/24
///   vpcIpRange:
///     type: string
///     default: 172.16.0.0/12
///   zoneIdI:
///     type: string
///     default: cn-beijing-i
/// resources:
///   defaultktKLuM:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: ${vpcIpRange}
///   defaultTQWN3k:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultktKLuM.id}
///       zoneId: ${zoneIdI}
///       cidrBlock: ${vswIpRangeI}
///   defaultWrovOd:
///     type: alicloud:clickhouseenterprisedbcluster:ClickHouseEnterpriseDbCluster
///     properties:
///       zoneId: ${zoneIdI}
///       vpcId: ${defaultktKLuM.id}
///       scaleMin: '8'
///       scaleMax: '16'
///       vswitchId: ${defaultTQWN3k.id}
///   default:
///     type: alicloud:clickhouseenterprisedbcluster:Account
///     properties:
///       account: abc
///       description: example_desc
///       dbInstanceId: ${defaultWrovOd.id}
///       accountType: NormalAccount
///       password: abc123456!
///       dmlAuthSetting:
///         dmlAuthority: '0'
///         ddlAuthority: true
///         allowDictionaries:
///           - '*'
///         allowDatabases:
///           - '*'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Enterprise Db Cluster Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouseenterprisedbcluster/account:Account example <db_instance_id>:<account>
/// ```
class Account extends pulumi.CustomResource {
  /// The name of the database account.
  late final pulumi.Output<String> account;

  /// The type of the database account. Valid values:
  /// - `NormalAccount`: Normal account number.
  /// - `SuperAccount`: The privileged account.
  late final pulumi.Output<String> accountType;

  /// The cluster ID.
  late final pulumi.Output<String> dbInstanceId;

  /// Note information.
  late final pulumi.Output<String?> description;

  /// Authorization information. See `dml_auth_setting` below.
  late final pulumi.Output<AccountDmlAuthSetting?> dmlAuthSetting;

  /// Database account password. Set the following rules.
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  late final pulumi.Output<String> password;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_clickhouseenterprisedbcluster_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/account:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    account = registerOutput<String>('account');
    accountType = registerOutput<String>('accountType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    description = registerOutput<String?>('description');
    dmlAuthSetting = registerOutput<AccountDmlAuthSetting?>(
      'dmlAuthSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountDmlAuthSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    password = registerOutput<String>('password');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/account:Account',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    account = registerOutput<String>('account');
    accountType = registerOutput<String>('accountType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    description = registerOutput<String?>('description');
    dmlAuthSetting = registerOutput<AccountDmlAuthSetting?>(
      'dmlAuthSetting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountDmlAuthSetting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    password = registerOutput<String>('password');
  }
}

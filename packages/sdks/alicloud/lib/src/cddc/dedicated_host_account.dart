import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_account_args.dart';
import 'dedicated_host_account_state.dart';

/// Provides a ApsaraDB for MyBase Dedicated Host Account resource.
///
/// For information about ApsaraDB for MyBase Dedicated Host Account and how to use it, see [What is Dedicated Host Account](https://www.alibabacloud.com/help/en/apsaradb-for-mybase/latest/creatededicatedhostaccount).
///
/// &gt; **NOTE:** Available since v1.148.0.
///
/// &gt; **NOTE:** Each Dedicated host can have only one account. Before you create an account for a host, make sure that the existing account is deleted.
///
/// &gt; **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-mybase/latest/notice-stop-selling-mybase-hosted-instances-from-august-31-2023) from version `1.225.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.cddc.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.ids?.[0]),
/// });
/// const defaultDedicatedHostGroup = new alicloud.cddc.DedicatedHostGroup("default", {
///     engine: "MySQL",
///     vpcId: defaultNetwork.id,
///     cpuAllocationRatio: 101,
///     memAllocationRatio: 50,
///     diskAllocationRatio: 200,
///     allocationPolicy: "Evenly",
///     hostReplacePolicy: "Manual",
///     dedicatedHostGroupDesc: name,
///     openPermission: true,
/// });
/// const defaultGetHostEcsLevelInfos = _default.then(_default => alicloud.cddc.getHostEcsLevelInfos({
///     dbType: "mysql",
///     zoneId: _default.ids?.[0],
///     storageType: "cloud_essd",
/// }));
/// const defaultDedicatedHost = new alicloud.cddc.DedicatedHost("default", {
///     hostName: name,
///     dedicatedHostGroupId: defaultDedicatedHostGroup.id,
///     hostClass: defaultGetHostEcsLevelInfos.then(defaultGetHostEcsLevelInfos => defaultGetHostEcsLevelInfos.infos?.[0]?.resClassCode),
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchId: defaultSwitch.id,
///     paymentType: "Subscription",
///     tags: {
///         Created: "TF",
///         For: "CDDC_DEDICATED",
///     },
/// });
/// const defaultDedicatedHostAccount = new alicloud.cddc.DedicatedHostAccount("default", {
///     accountName: name,
///     accountPassword: "Password1234",
///     dedicatedHostId: defaultDedicatedHost.dedicatedHostId,
///     accountType: "Normal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.cddc.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.ids[0])
/// default_dedicated_host_group = alicloud.cddc.DedicatedHostGroup("default",
///     engine="MySQL",
///     vpc_id=default_network.id,
///     cpu_allocation_ratio=101,
///     mem_allocation_ratio=50,
///     disk_allocation_ratio=200,
///     allocation_policy="Evenly",
///     host_replace_policy="Manual",
///     dedicated_host_group_desc=name,
///     open_permission=True)
/// default_get_host_ecs_level_infos = alicloud.cddc.get_host_ecs_level_infos(db_type="mysql",
///     zone_id=default.ids[0],
///     storage_type="cloud_essd")
/// default_dedicated_host = alicloud.cddc.DedicatedHost("default",
///     host_name=name,
///     dedicated_host_group_id=default_dedicated_host_group.id,
///     host_class=default_get_host_ecs_level_infos.infos[0].res_class_code,
///     zone_id=default.ids[0],
///     vswitch_id=default_switch.id,
///     payment_type="Subscription",
///     tags={
///         "Created": "TF",
///         "For": "CDDC_DEDICATED",
///     })
/// default_dedicated_host_account = alicloud.cddc.DedicatedHostAccount("default",
///     account_name=name,
///     account_password="Password1234",
///     dedicated_host_id=default_dedicated_host.dedicated_host_id,
///     account_type="Normal")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Cddc.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///     });
///
///     var defaultDedicatedHostGroup = new AliCloud.Cddc.DedicatedHostGroup("default", new()
///     {
///         Engine = "MySQL",
///         VpcId = defaultNetwork.Id,
///         CpuAllocationRatio = 101,
///         MemAllocationRatio = 50,
///         DiskAllocationRatio = 200,
///         AllocationPolicy = "Evenly",
///         HostReplacePolicy = "Manual",
///         DedicatedHostGroupDesc = name,
///         OpenPermission = true,
///     });
///
///     var defaultGetHostEcsLevelInfos = AliCloud.Cddc.GetHostEcsLevelInfos.Invoke(new()
///     {
///         DbType = "mysql",
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///         StorageType = "cloud_essd",
///     });
///
///     var defaultDedicatedHost = new AliCloud.Cddc.DedicatedHost("default", new()
///     {
///         HostName = name,
///         DedicatedHostGroupId = defaultDedicatedHostGroup.Id,
///         HostClass = defaultGetHostEcsLevelInfos.Apply(getHostEcsLevelInfosResult => getHostEcsLevelInfosResult.Infos[0]?.ResClassCode),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchId = defaultSwitch.Id,
///         PaymentType = "Subscription",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "CDDC_DEDICATED" },
///         },
///     });
///
///     var defaultDedicatedHostAccount = new AliCloud.Cddc.DedicatedHostAccount("default", new()
///     {
///         AccountName = name,
///         AccountPassword = "Password1234",
///         DedicatedHostId = defaultDedicatedHost.DedicatedHostId,
///         AccountType = "Normal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cddc.GetZones(ctx, &cddc.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDedicatedHostGroup, err := cddc.NewDedicatedHostGroup(ctx, "default", &cddc.DedicatedHostGroupArgs{
/// 			Engine:                 pulumi.String("MySQL"),
/// 			VpcId:                  defaultNetwork.ID(),
/// 			CpuAllocationRatio:     pulumi.Int(101),
/// 			MemAllocationRatio:     pulumi.Int(50),
/// 			DiskAllocationRatio:    pulumi.Int(200),
/// 			AllocationPolicy:       pulumi.String("Evenly"),
/// 			HostReplacePolicy:      pulumi.String("Manual"),
/// 			DedicatedHostGroupDesc: pulumi.String(name),
/// 			OpenPermission:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetHostEcsLevelInfos, err := cddc.GetHostEcsLevelInfos(ctx, &cddc.GetHostEcsLevelInfosArgs{
/// 			DbType:      "mysql",
/// 			ZoneId:      _default.Ids[0],
/// 			StorageType: "cloud_essd",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDedicatedHost, err := cddc.NewDedicatedHost(ctx, "default", &cddc.DedicatedHostArgs{
/// 			HostName:             pulumi.String(name),
/// 			DedicatedHostGroupId: defaultDedicatedHostGroup.ID(),
/// 			HostClass:            pulumi.String(defaultGetHostEcsLevelInfos.Infos[0].ResClassCode),
/// 			ZoneId:               pulumi.String(_default.Ids[0]),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			PaymentType:          pulumi.String("Subscription"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("CDDC_DEDICATED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cddc.NewDedicatedHostAccount(ctx, "default", &cddc.DedicatedHostAccountArgs{
/// 			AccountName:     pulumi.String(name),
/// 			AccountPassword: pulumi.String("Password1234"),
/// 			DedicatedHostId: defaultDedicatedHost.DedicatedHostId,
/// 			AccountType:     pulumi.String("Normal"),
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
/// import com.pulumi.alicloud.cddc.CddcFunctions;
/// import com.pulumi.alicloud.cddc.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cddc.DedicatedHostGroup;
/// import com.pulumi.alicloud.cddc.DedicatedHostGroupArgs;
/// import com.pulumi.alicloud.cddc.inputs.GetHostEcsLevelInfosArgs;
/// import com.pulumi.alicloud.cddc.DedicatedHost;
/// import com.pulumi.alicloud.cddc.DedicatedHostArgs;
/// import com.pulumi.alicloud.cddc.DedicatedHostAccount;
/// import com.pulumi.alicloud.cddc.DedicatedHostAccountArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = CddcFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var defaultDedicatedHostGroup = new DedicatedHostGroup("defaultDedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .engine("MySQL")
///             .vpcId(defaultNetwork.id())
///             .cpuAllocationRatio(101)
///             .memAllocationRatio(50)
///             .diskAllocationRatio(200)
///             .allocationPolicy("Evenly")
///             .hostReplacePolicy("Manual")
///             .dedicatedHostGroupDesc(name)
///             .openPermission(true)
///             .build());
///
///         final var defaultGetHostEcsLevelInfos = CddcFunctions.getHostEcsLevelInfos(GetHostEcsLevelInfosArgs.builder()
///             .dbType("mysql")
///             .zoneId(default_.ids()[0])
///             .storageType("cloud_essd")
///             .build());
///
///         var defaultDedicatedHost = new DedicatedHost("defaultDedicatedHost", DedicatedHostArgs.builder()
///             .hostName(name)
///             .dedicatedHostGroupId(defaultDedicatedHostGroup.id())
///             .hostClass(defaultGetHostEcsLevelInfos.infos()[0].resClassCode())
///             .zoneId(default_.ids()[0])
///             .vswitchId(defaultSwitch.id())
///             .paymentType("Subscription")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "CDDC_DEDICATED")
///             ))
///             .build());
///
///         var defaultDedicatedHostAccount = new DedicatedHostAccount("defaultDedicatedHostAccount", DedicatedHostAccountArgs.builder()
///             .accountName(name)
///             .accountPassword("Password1234")
///             .dedicatedHostId(defaultDedicatedHost.dedicatedHostId())
///             .accountType("Normal")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.ids[0]}
///   defaultDedicatedHostGroup:
///     type: alicloud:cddc:DedicatedHostGroup
///     name: default
///     properties:
///       engine: MySQL
///       vpcId: ${defaultNetwork.id}
///       cpuAllocationRatio: 101
///       memAllocationRatio: 50
///       diskAllocationRatio: 200
///       allocationPolicy: Evenly
///       hostReplacePolicy: Manual
///       dedicatedHostGroupDesc: ${name}
///       openPermission: true
///   defaultDedicatedHost:
///     type: alicloud:cddc:DedicatedHost
///     name: default
///     properties:
///       hostName: ${name}
///       dedicatedHostGroupId: ${defaultDedicatedHostGroup.id}
///       hostClass: ${defaultGetHostEcsLevelInfos.infos[0].resClassCode}
///       zoneId: ${default.ids[0]}
///       vswitchId: ${defaultSwitch.id}
///       paymentType: Subscription
///       tags:
///         Created: TF
///         For: CDDC_DEDICATED
///   defaultDedicatedHostAccount:
///     type: alicloud:cddc:DedicatedHostAccount
///     name: default
///     properties:
///       accountName: ${name}
///       accountPassword: Password1234
///       dedicatedHostId: ${defaultDedicatedHost.dedicatedHostId}
///       accountType: Normal
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cddc:getZones
///       arguments: {}
///   defaultGetHostEcsLevelInfos:
///     fn::invoke:
///       function: alicloud:cddc:getHostEcsLevelInfos
///       arguments:
///         dbType: mysql
///         zoneId: ${default.ids[0]}
///         storageType: cloud_essd
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ApsaraDB for MyBase Dedicated Host Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cddc/dedicatedHostAccount:DedicatedHostAccount example <dedicated_host_id>:<account_name>
/// ```
class DedicatedHostAccount extends pulumi.CustomResource {
  /// The name of the Dedicated host account. The account name must be 2 to 16 characters in length, contain lower case letters, digits, and underscore(_). At the same time, the name must start with a letter and end with a letter or number.
  late final pulumi.Output<String> accountName;

  /// The password of the Dedicated host account. The account password must be 6 to 32 characters in length, and can contain letters, digits, and special characters `!@#$%^&*()_+-=`.
  late final pulumi.Output<String> accountPassword;

  /// The type of the Dedicated host account. Valid values: `Admin`, `Normal`.
  late final pulumi.Output<String?> accountType;

  /// The ID of Dedicated the host.
  late final pulumi.Output<String> dedicatedHostId;

  /// Creates a new [DedicatedHostAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHostAccount]. {@macro pulumi_cddc_dedicated_host_account_dedicated_host_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHostAccount(
    String name, {
    DedicatedHostAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cddc/dedicatedHostAccount:DedicatedHostAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String?>('accountType');
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
  }

  /// Gets an existing [DedicatedHostAccount] resource's state with the given [name] and [id].
  static DedicatedHostAccount get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostAccountState? state,
  }) {
    return DedicatedHostAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedHostAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cddc/dedicatedHostAccount:DedicatedHostAccount',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String?>('accountType');
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
  }
}

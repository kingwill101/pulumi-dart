import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_instance_args.dart';
import 'serverless_instance_security_ip_group.dart';

/// Provides a MongoDB Serverless Instance resource.
///
/// For information about MongoDB Serverless Instance and how to use it, see [What is Serverless Instance](https://www.alibabacloud.com/help/doc-detail/26558.html).
///
/// > **NOTE:** Deprecated since v1.214.0.
///
/// > **DEPRECATED:**  This resource has been deprecated from version `1.214.0`.
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
/// const _default = alicloud.mongodb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const example = new alicloud.mongodb.ServerlessInstance("example", {
///     accountPassword: "Abc12345",
///     dbInstanceDescription: "example_value",
///     dbInstanceStorage: 5,
///     storageEngine: "WiredTiger",
///     capacityUnit: 100,
///     engine: "MongoDB",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     engineVersion: "4.2",
///     period: 1,
///     periodPriceType: "Month",
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     tags: {
///         Created: "MongodbServerlessInstance",
///         For: "TF",
///     },
///     securityIpGroups: [{
///         securityIpGroupAttribute: "example_value",
///         securityIpGroupName: "example_value",
///         securityIpList: "192.168.0.1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.mongodb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// example = alicloud.mongodb.ServerlessInstance("example",
///     account_password="Abc12345",
///     db_instance_description="example_value",
///     db_instance_storage=5,
///     storage_engine="WiredTiger",
///     capacity_unit=100,
///     engine="MongoDB",
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     engine_version="4.2",
///     period=1,
///     period_price_type="Month",
///     vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id,
///     vswitch_id=default_get_switches.ids[0],
///     tags={
///         "Created": "MongodbServerlessInstance",
///         "For": "TF",
///     },
///     security_ip_groups=[{
///         "security_ip_group_attribute": "example_value",
///         "security_ip_group_name": "example_value",
///         "security_ip_list": "192.168.0.1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.MongoDB.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var example = new AliCloud.MongoDB.ServerlessInstance("example", new()
///     {
///         AccountPassword = "Abc12345",
///         DbInstanceDescription = "example_value",
///         DbInstanceStorage = 5,
///         StorageEngine = "WiredTiger",
///         CapacityUnit = 100,
///         Engine = "MongoDB",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         EngineVersion = "4.2",
///         Period = 1,
///         PeriodPriceType = "Month",
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         Tags =
///         {
///             { "Created", "MongodbServerlessInstance" },
///             { "For", "TF" },
///         },
///         SecurityIpGroups = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ServerlessInstanceSecurityIpGroupArgs
///             {
///                 SecurityIpGroupAttribute = "example_value",
///                 SecurityIpGroupName = "example_value",
///                 SecurityIpList = "192.168.0.1",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewServerlessInstance(ctx, "example", &mongodb.ServerlessInstanceArgs{
/// 			AccountPassword:       pulumi.String("Abc12345"),
/// 			DbInstanceDescription: pulumi.String("example_value"),
/// 			DbInstanceStorage:     pulumi.Int(5),
/// 			StorageEngine:         pulumi.String("WiredTiger"),
/// 			CapacityUnit:          pulumi.Int(100),
/// 			Engine:                pulumi.String("MongoDB"),
/// 			ResourceGroupId:       pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			EngineVersion:         pulumi.String("4.2"),
/// 			Period:                pulumi.Int(1),
/// 			PeriodPriceType:       pulumi.String("Month"),
/// 			VpcId:                 pulumi.String(defaultGetNetworks.Ids[0]),
/// 			ZoneId:                pulumi.String(_default.Zones[0].Id),
/// 			VswitchId:             pulumi.String(defaultGetSwitches.Ids[0]),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("MongodbServerlessInstance"),
/// 				"For":     pulumi.String("TF"),
/// 			},
/// 			SecurityIpGroups: mongodb.ServerlessInstanceSecurityIpGroupArray{
/// 				&mongodb.ServerlessInstanceSecurityIpGroupArgs{
/// 					SecurityIpGroupAttribute: pulumi.String("example_value"),
/// 					SecurityIpGroupName:      pulumi.String("example_value"),
/// 					SecurityIpList:           pulumi.String("192.168.0.1"),
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.mongodb.ServerlessInstance;
/// import com.pulumi.alicloud.mongodb.ServerlessInstanceArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ServerlessInstanceSecurityIpGroupArgs;
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
///         final var default = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var example = new ServerlessInstance("example", ServerlessInstanceArgs.builder()
///             .accountPassword("Abc12345")
///             .dbInstanceDescription("example_value")
///             .dbInstanceStorage(5)
///             .storageEngine("WiredTiger")
///             .capacityUnit(100)
///             .engine("MongoDB")
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .engineVersion("4.2")
///             .period(1)
///             .periodPriceType("Month")
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "MongodbServerlessInstance"),
///                 Map.entry("For", "TF")
///             ))
///             .securityIpGroups(ServerlessInstanceSecurityIpGroupArgs.builder()
///                 .securityIpGroupAttribute("example_value")
///                 .securityIpGroupName("example_value")
///                 .securityIpList("192.168.0.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:mongodb:ServerlessInstance
///     properties:
///       accountPassword: Abc12345
///       dbInstanceDescription: example_value
///       dbInstanceStorage: 5
///       storageEngine: WiredTiger
///       capacityUnit: 100
///       engine: MongoDB
///       resourceGroupId: ${defaultGetResourceGroups.groups[0].id}
///       engineVersion: '4.2'
///       period: 1
///       periodPriceType: Month
///       vpcId: ${defaultGetNetworks.ids[0]}
///       zoneId: ${default.zones[0].id}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       tags:
///         Created: MongodbServerlessInstance
///         For: TF
///       securityIpGroups:
///         - securityIpGroupAttribute: example_value
///           securityIpGroupName: example_value
///           securityIpList: 192.168.0.1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:mongodb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MongoDB Serverless Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/serverlessInstance:ServerlessInstance example <id>
/// ```
class ServerlessInstance extends pulumi.CustomResource {
  /// The password of the database logon account.
  /// * The password length is `8` to `32` bits.
  /// * The password consists of at least any three of uppercase letters, lowercase letters, numbers, and special characters. The special character is `!#$%^&*()_+-=`. The MongoDB Serverless instance provides a default database login account. This account cannot be modified. You can only set or modify the password for this account.
  late final pulumi.Output<String> accountPassword;
  /// Set whether the instance is automatically renewed.
  late final pulumi.Output<bool?> autoRenew;
  /// The I/O throughput consumed by the instance. Valid values: `100` to `8000`.
  late final pulumi.Output<int> capacityUnit;
  /// The db instance description.
  late final pulumi.Output<String?> dbInstanceDescription;
  /// The db instance storage. Valid values: `1` to `100`.
  late final pulumi.Output<int> dbInstanceStorage;
  /// The database engine of the instance. Valid values: `MongoDB`.
  late final pulumi.Output<String> engine;
  /// The database version number. Valid values: `4.2`.
  late final pulumi.Output<String> engineVersion;
  /// The end time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC. **NOTE:** The difference between the start time and end time must be one hour. For example, if `maintain_start_time` is `01:00Z`, `maintain_end_time` must be `02:00Z`.
  late final pulumi.Output<String> maintainEndTime;
  /// The start time of the maintenance window. Specify the time in the `HH:mmZ` format. The time must be in UTC.
  late final pulumi.Output<String> maintainStartTime;
  /// The purchase duration of the instance, in months. Valid values: `1` to `9`, `12`, `24`, `36`, `60`.
  late final pulumi.Output<int?> period;
  /// The period price type. Valid values: `Day`, `Month`.
  late final pulumi.Output<String?> periodPriceType;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// An array that consists of the information of IP whitelists.
  late final pulumi.Output<List<ServerlessInstanceSecurityIpGroup>?> securityIpGroups;
  /// The instance status. For more information, see the instance Status Table.
  late final pulumi.Output<String> status;
  /// The storage engine used by the instance. Valid values: `WiredTiger`.
  late final pulumi.Output<String> storageEngine;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC network.
  late final pulumi.Output<String> vpcId;
  /// The of the vswitch.
  late final pulumi.Output<String> vswitchId;
  /// The ID of the zone. Use this parameter to specify the zone created by the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ServerlessInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessInstance]. {@macro pulumi_mongodb_serverless_instance_serverless_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessInstance(
    String name, {
    ServerlessInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/serverlessInstance:ServerlessInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountPassword = registerOutput<String>('accountPassword');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.capacityUnit = registerOutput<int>('capacityUnit');
    this.dbInstanceDescription = registerOutput<String?>('dbInstanceDescription');
    this.dbInstanceStorage = registerOutput<int>('dbInstanceStorage');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.maintainEndTime = registerOutput<String>('maintainEndTime');
    this.maintainStartTime = registerOutput<String>('maintainStartTime');
    this.period = registerOutput<int?>('period');
    this.periodPriceType = registerOutput<String?>('periodPriceType');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityIpGroups = registerOutput<List<ServerlessInstanceSecurityIpGroup>?>('securityIpGroups');
    this.status = registerOutput<String>('status');
    this.storageEngine = registerOutput<String>('storageEngine');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}

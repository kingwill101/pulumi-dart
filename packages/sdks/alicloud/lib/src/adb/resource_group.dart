import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_args.dart';
import 'resource_group_state.dart';

/// Provides a AnalyticDB for MySQL (ADB) Resource Group resource.
///
/// For information about AnalyticDB for MySQL (ADB) Resource Group and how to use it, see [What is Resource Group](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/latest/api-doc-adb-2019-03-15-api-doc-createdbresourcegroup).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const _default = alicloud.adb.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultDBCluster = new alicloud.adb.DBCluster("default", {
///     computeResource: "48Core192GB",
///     dbClusterCategory: "MixedStorage",
///     dbClusterVersion: "3.0",
///     dbNodeClass: "E32",
///     dbNodeStorage: 100,
///     description: name,
///     elasticIoResource: 1,
///     maintainTime: "04:00Z-05:00Z",
///     mode: "flexible",
///     paymentType: "PayAsYouGo",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     securityIps: [
///         "10.168.1.12",
///         "10.168.1.11",
///     ],
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultResourceGroup = new alicloud.adb.ResourceGroup("default", {
///     groupName: "TF_EXAMPLE",
///     groupType: "batch",
///     nodeNum: 0,
///     dbClusterId: defaultDBCluster.id,
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
/// default = alicloud.adb.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="10.4.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_db_cluster = alicloud.adb.DBCluster("default",
///     compute_resource="48Core192GB",
///     db_cluster_category="MixedStorage",
///     db_cluster_version="3.0",
///     db_node_class="E32",
///     db_node_storage=100,
///     description=name,
///     elastic_io_resource=1,
///     maintain_time="04:00Z-05:00Z",
///     mode="flexible",
///     payment_type="PayAsYouGo",
///     resource_group_id=default_get_resource_groups.ids[0],
///     security_ips=[
///         "10.168.1.12",
///         "10.168.1.11",
///     ],
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     zone_id=default.zones[0].id,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_resource_group = alicloud.adb.ResourceGroup("default",
///     group_name="TF_EXAMPLE",
///     group_type="batch",
///     node_num=0,
///     db_cluster_id=default_db_cluster.id)
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
///     var @default = AliCloud.Adb.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultDBCluster = new AliCloud.Adb.DBCluster("default", new()
///     {
///         ComputeResource = "48Core192GB",
///         DbClusterCategory = "MixedStorage",
///         DbClusterVersion = "3.0",
///         DbNodeClass = "E32",
///         DbNodeStorage = 100,
///         Description = name,
///         ElasticIoResource = 1,
///         MaintainTime = "04:00Z-05:00Z",
///         Mode = "flexible",
///         PaymentType = "PayAsYouGo",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         SecurityIps = new[]
///         {
///             "10.168.1.12",
///             "10.168.1.11",
///         },
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultResourceGroup = new AliCloud.Adb.ResourceGroup("default", new()
///     {
///         GroupName = "TF_EXAMPLE",
///         GroupType = "batch",
///         NodeNum = 0,
///         DbClusterId = defaultDBCluster.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
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
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDBCluster, err := adb.NewDBCluster(ctx, "default", &adb.DBClusterArgs{
/// 			ComputeResource:   pulumi.String("48Core192GB"),
/// 			DbClusterCategory: pulumi.String("MixedStorage"),
/// 			DbClusterVersion:  pulumi.String("3.0"),
/// 			DbNodeClass:       pulumi.String("E32"),
/// 			DbNodeStorage:     pulumi.Int(100),
/// 			Description:       pulumi.String(name),
/// 			ElasticIoResource: pulumi.Int(1),
/// 			MaintainTime:      pulumi.String("04:00Z-05:00Z"),
/// 			Mode:              pulumi.String("flexible"),
/// 			PaymentType:       pulumi.String("PayAsYouGo"),
/// 			ResourceGroupId:   pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.168.1.12"),
/// 				pulumi.String("10.168.1.11"),
/// 			},
/// 			VpcId:     defaultNetwork.ID(),
/// 			VswitchId: defaultSwitch.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewResourceGroup(ctx, "default", &adb.ResourceGroupArgs{
/// 			GroupName:   pulumi.String("TF_EXAMPLE"),
/// 			GroupType:   pulumi.String("batch"),
/// 			NodeNum:     pulumi.Int(0),
/// 			DbClusterId: defaultDBCluster.ID(),
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.adb.DBCluster;
/// import com.pulumi.alicloud.adb.DBClusterArgs;
/// import com.pulumi.alicloud.adb.ResourceGroup;
/// import com.pulumi.alicloud.adb.ResourceGroupArgs;
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
///         final var default = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultDBCluster = new DBCluster("defaultDBCluster", DBClusterArgs.builder()
///             .computeResource("48Core192GB")
///             .dbClusterCategory("MixedStorage")
///             .dbClusterVersion("3.0")
///             .dbNodeClass("E32")
///             .dbNodeStorage(100)
///             .description(name)
///             .elasticIoResource(1)
///             .maintainTime("04:00Z-05:00Z")
///             .mode("flexible")
///             .paymentType("PayAsYouGo")
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .securityIps(
///                 "10.168.1.12",
///                 "10.168.1.11")
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .zoneId(default_.zones()[0].id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultResourceGroup = new ResourceGroup("defaultResourceGroup", ResourceGroupArgs.builder()
///             .groupName("TF_EXAMPLE")
///             .groupType("batch")
///             .nodeNum(0)
///             .dbClusterId(defaultDBCluster.id())
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
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultDBCluster:
///     type: alicloud:adb:DBCluster
///     name: default
///     properties:
///       computeResource: 48Core192GB
///       dbClusterCategory: MixedStorage
///       dbClusterVersion: '3.0'
///       dbNodeClass: E32
///       dbNodeStorage: 100
///       description: ${name}
///       elasticIoResource: 1
///       maintainTime: 04:00Z-05:00Z
///       mode: flexible
///       paymentType: PayAsYouGo
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       securityIps:
///         - 10.168.1.12
///         - 10.168.1.11
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultSwitch.id}
///       zoneId: ${default.zones[0].id}
///       tags:
///         Created: TF
///         For: example
///   defaultResourceGroup:
///     type: alicloud:adb:ResourceGroup
///     name: default
///     properties:
///       groupName: TF_EXAMPLE
///       groupType: batch
///       nodeNum: 0
///       dbClusterId: ${defaultDBCluster.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Adb Resource Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/resourceGroup:ResourceGroup example <db_cluster_id>:<group_name>
/// ```
class ResourceGroup extends pulumi.CustomResource {
  /// The working mode of the resource group. Default value: `Disable`. Valid values: `Disable`, `AutoScale`.
  late final pulumi.Output<String> clusterMode;

  /// The resource specifications of a single compute cluster. Unit: ACU.
  late final pulumi.Output<String> clusterSizeResource;

  /// (Available since v1.261.0) The endpoint of the resource group.
  late final pulumi.Output<String> connectionString;

  /// The time when the resource group was created.
  late final pulumi.Output<String> createTime;

  /// The ID of the DBCluster.
  late final pulumi.Output<String> dbClusterId;

  /// The engine of the resource group. Default value: `AnalyticDB`. Valid values: `AnalyticDB`, `SparkWarehouse`.
  late final pulumi.Output<String> engine;

  /// The Spark application configuration parameters that can be applied to all Spark jobs executed in the resource group.
  late final pulumi.Output<Map<String, String>?> engineParams;

  /// The name of the resource group. The `group_name` can be up to 255 characters in length and can contain digits, uppercase letters, hyphens (-), and underscores (_). It must start with a digit or uppercase letter.
  late final pulumi.Output<String> groupName;

  /// The query execution mode. Default value: `interactive`. Valid values: `interactive`, `batch`.
  late final pulumi.Output<String> groupType;

  /// The maximum number of compute clusters that are allowed in the resource group.
  late final pulumi.Output<int?> maxClusterCount;

  /// The maximum amount of reserved computing resources, which refers to the amount of resources that are not allocated in the cluster.
  late final pulumi.Output<String> maxComputeResource;

  /// The minimum number of compute clusters that are required in the resource group.
  late final pulumi.Output<int?> minClusterCount;

  /// The minimum amount of reserved computing resources. Unit: AnalyticDB compute unit (ACU).
  late final pulumi.Output<String> minComputeResource;

  /// The number of nodes.
  late final pulumi.Output<int> nodeNum;

  /// (Available since v1.261.0) The port number of the resource group.
  late final pulumi.Output<String> port;

  /// (Available since v1.261.0) The status of the resource group.
  late final pulumi.Output<String> status;

  /// The time when the resource group was updated.
  late final pulumi.Output<String> updateTime;

  /// The database accounts that are associated with the resource group.
  late final pulumi.Output<String> user;

  /// The database accounts with which to associate the resource group.
  late final pulumi.Output<List<String>?> users;

  /// Creates a new [ResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroup]. {@macro pulumi_adb_resource_group_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/resourceGroup:ResourceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterMode = registerOutput<String>('clusterMode');
    clusterSizeResource = registerOutput<String>('clusterSizeResource');
    connectionString = registerOutput<String>('connectionString');
    createTime = registerOutput<String>('createTime');
    dbClusterId = registerOutput<String>('dbClusterId');
    engine = registerOutput<String>('engine');
    engineParams = registerOutput<Map<String, String>?>('engineParams');
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String>('groupType');
    maxClusterCount = registerOutput<int?>('maxClusterCount');
    maxComputeResource = registerOutput<String>('maxComputeResource');
    minClusterCount = registerOutput<int?>('minClusterCount');
    minComputeResource = registerOutput<String>('minComputeResource');
    nodeNum = registerOutput<int>('nodeNum');
    port = registerOutput<String>('port');
    status = registerOutput<String>('status');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String>('user');
    users = registerOutput<List<String>?>('users');
  }

  /// Gets an existing [ResourceGroup] resource's state with the given [name] and [id].
  static ResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupState? state,
  }) {
    return ResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/resourceGroup:ResourceGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterMode = registerOutput<String>('clusterMode');
    clusterSizeResource = registerOutput<String>('clusterSizeResource');
    connectionString = registerOutput<String>('connectionString');
    createTime = registerOutput<String>('createTime');
    dbClusterId = registerOutput<String>('dbClusterId');
    engine = registerOutput<String>('engine');
    engineParams = registerOutput<Map<String, String>?>('engineParams');
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String>('groupType');
    maxClusterCount = registerOutput<int?>('maxClusterCount');
    maxComputeResource = registerOutput<String>('maxComputeResource');
    minClusterCount = registerOutput<int?>('minClusterCount');
    minComputeResource = registerOutput<String>('minComputeResource');
    nodeNum = registerOutput<int>('nodeNum');
    port = registerOutput<String>('port');
    status = registerOutput<String>('status');
    updateTime = registerOutput<String>('updateTime');
    user = registerOutput<String>('user');
    users = registerOutput<List<String>?>('users');
  }
}

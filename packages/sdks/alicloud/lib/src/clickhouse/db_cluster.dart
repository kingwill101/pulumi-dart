import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_args.dart';
import 'db_cluster_state.dart';

/// Provides a Click House DBCluster resource.
///
/// For information about Click House DBCluster and how to use it, see [What is DBCluster](https://www.alibabacloud.com/help/zh/clickhouse/latest/api-clickhouse-2019-11-11-createdbinstance).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetRegions = alicloud.clickhouse.getRegions({
///     regionId: region,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.zoneIds?.[0]?.zoneId),
/// });
/// const defaultDbCluster = new alicloud.clickhouse.DbCluster("default", {
///     dbClusterVersion: "23.8",
///     category: "Basic",
///     dbClusterClass: "S8",
///     dbClusterNetworkType: "vpc",
///     dbNodeGroupCount: 1,
///     paymentType: "PayAsYouGo",
///     dbNodeStorage: "100",
///     storageType: "cloud_essd",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_regions = alicloud.clickhouse.get_regions(region_id=region)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_regions.regions[0].zone_ids[0].zone_id)
/// default_db_cluster = alicloud.clickhouse.DbCluster("default",
///     db_cluster_version="23.8",
///     category="Basic",
///     db_cluster_class="S8",
///     db_cluster_network_type="vpc",
///     db_node_group_count=1,
///     payment_type="PayAsYouGo",
///     db_node_storage="100",
///     storage_type="cloud_essd",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id,
///     resource_group_id=default.groups[0].id)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetRegions = AliCloud.ClickHouse.GetRegions.Invoke(new()
///     {
///         RegionId = region,
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
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.ZoneIds[0]?.ZoneId),
///     });
///
///     var defaultDbCluster = new AliCloud.ClickHouse.DbCluster("default", new()
///     {
///         DbClusterVersion = "23.8",
///         Category = "Basic",
///         DbClusterClass = "S8",
///         DbClusterNetworkType = "vpc",
///         DbNodeGroupCount = 1,
///         PaymentType = "PayAsYouGo",
///         DbNodeStorage = "100",
///         StorageType = "cloud_essd",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := clickhouse.GetRegions(ctx, &clickhouse.GetRegionsArgs{
/// 			RegionId: pulumi.StringRef(region),
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
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetRegions.Regions[0].ZoneIds[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouse.NewDbCluster(ctx, "default", &clickhouse.DbClusterArgs{
/// 			DbClusterVersion:     pulumi.String("23.8"),
/// 			Category:             pulumi.String("Basic"),
/// 			DbClusterClass:       pulumi.String("S8"),
/// 			DbClusterNetworkType: pulumi.String("vpc"),
/// 			DbNodeGroupCount:     pulumi.Int(1),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			DbNodeStorage:        pulumi.String("100"),
/// 			StorageType:          pulumi.String("cloud_essd"),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			VpcId:                defaultNetwork.ID(),
/// 			ResourceGroupId:      pulumi.String(_default.Groups[0].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouse.DbCluster;
/// import com.pulumi.alicloud.clickhouse.DbClusterArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetRegions = ClickhouseFunctions.getRegions(GetRegionsArgs.builder()
///             .regionId(region)
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
///             .zoneId(defaultGetRegions.regions()[0].zoneIds()[0].zoneId())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbClusterVersion("23.8")
///             .category("Basic")
///             .dbClusterClass("S8")
///             .dbClusterNetworkType("vpc")
///             .dbNodeGroupCount(1)
///             .paymentType("PayAsYouGo")
///             .dbNodeStorage("100")
///             .storageType("cloud_essd")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .resourceGroupId(default_.groups()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: tf-example
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
///       zoneId: ${defaultGetRegions.regions[0].zoneIds[0].zoneId}
///   defaultDbCluster:
///     type: alicloud:clickhouse:DbCluster
///     name: default
///     properties:
///       dbClusterVersion: '23.8'
///       category: Basic
///       dbClusterClass: S8
///       dbClusterNetworkType: vpc
///       dbNodeGroupCount: '1'
///       paymentType: PayAsYouGo
///       dbNodeStorage: '100'
///       storageType: cloud_essd
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///       resourceGroupId: ${default.groups[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         regionId: ${region}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House DBCluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouse/dbCluster:DbCluster example <id>
/// ```
class DbCluster extends pulumi.CustomResource {
  /// Whether to enable public connection. Value options: `true`, `false`.
  late final pulumi.Output<bool?> allocatePublicConnection;

  /// The Category of DBCluster. Valid values: `Basic`,`HighAvailability`.
  late final pulumi.Output<String> category;

  /// Whether to use cold storage. Valid values: `ENABLE`, `DISABLE`, default to `DISABLE`. When it's set to `ENABLE`, cold storage will be used, and `cold_storage` cannot be set to `DISABLE` again.
  late final pulumi.Output<String> coldStorage;

  /// (Available since v1.196.0) - The connection string of the cluster.
  late final pulumi.Output<String> connectionString;

  /// The db cluster access white list. See `db_cluster_access_white_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  dbClusterAccessWhiteLists;

  /// The DBCluster class. According to the category, db_cluster_class has two value ranges:
  /// * Under the condition that the category is the `Basic`, Valid values: `LS20`, `LS40`, `LS80`,`S8`, `S16`, `S32`, `S64`,`S80`, `S104`.
  /// * Under the condition that the category is the `HighAvailability`, Valid values: `LC20`, `LC40`, `LC80`,`C8`, `C16`, `C32`, `C64`, `C80`, `C104`.
  late final pulumi.Output<String> dbClusterClass;

  /// The DBCluster description.
  late final pulumi.Output<String> dbClusterDescription;

  /// The DBCluster network type. Valid values: `vpc`.
  late final pulumi.Output<String> dbClusterNetworkType;

  /// The DBCluster version. Valid values: `20.3.10.75`, `20.8.7.15`, `21.8.10.19`, `22.8.5.29`, `23.8`. **NOTE:** `19.15.2.2` is no longer supported. From version 1.191.0, `db_cluster_version` can be set to `22.8.5.29`.
  late final pulumi.Output<String> dbClusterVersion;

  /// The db node group count. The number should between 1 and 48.
  late final pulumi.Output<int> dbNodeGroupCount;

  /// The db node storage.
  late final pulumi.Output<String> dbNodeStorage;

  /// Key management service KMS key ID. It is valid and required when encryption_type is `CloudDisk`.
  late final pulumi.Output<String?> encryptionKey;

  /// Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  late final pulumi.Output<String?> encryptionType;

  /// The maintenance window of DBCluster. Valid format: `hh:mmZ-hh:mm Z`.
  late final pulumi.Output<String> maintainTime;

  /// The zone IDs and
  /// corresponding vswitch IDs and zone IDs of multi-zone setup. if set, a multi-zone DBCluster will be created. Currently only support 2 available zones, primary zone not included. See `multi_zone_vswitch_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> multiZoneVswitchLists;

  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  late final pulumi.Output<String> paymentType;

  /// Pre-paid cluster of the pay-as-you-go cycle. It is valid and required when payment_type is `Subscription`. Valid values: `Month`, `Year`.
  late final pulumi.Output<String?> period;

  /// (Available since v1.196.0) The connection port of the cluster.
  late final pulumi.Output<String> port;

  /// (Available since v1.245.0) The public connection string of the cluster. Only valid when `allocate_public_connection` is `true`.
  late final pulumi.Output<String> publicConnectionString;

  /// The renewal status of the resource. Valid values: `AutoRenewal`,`Normal`. It is valid and required when payment_type is `Subscription`. When `renewal_status` is set to `AutoRenewal`, the resource is renewed automatically.
  late final pulumi.Output<String> renewalStatus;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  late final pulumi.Output<String> status;

  /// Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  late final pulumi.Output<String> storageType;

  /// The used time of DBCluster. It is valid and required when payment_type is `Subscription`. item choices: [1-9] when period is `Month`, [1-3] when period is `Year`.
  late final pulumi.Output<String?> usedTime;

  /// The id of the VPC.
  late final pulumi.Output<String> vpcId;

  /// The vswitch id of DBCluster.
  late final pulumi.Output<String?> vswitchId;

  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbCluster]. {@macro pulumi_clickhouse_db_cluster_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbCluster(
    String name, {
    DbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouse/dbCluster:DbCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocatePublicConnection = registerOutput<bool?>(
      'allocatePublicConnection',
    );
    category = registerOutput<String>('category');
    coldStorage = registerOutput<String>('coldStorage');
    connectionString = registerOutput<String>('connectionString');
    dbClusterAccessWhiteLists = registerOutput<List<Map<String, dynamic>>?>(
      'dbClusterAccessWhiteLists',
    );
    dbClusterClass = registerOutput<String>('dbClusterClass');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterNetworkType = registerOutput<String>('dbClusterNetworkType');
    dbClusterVersion = registerOutput<String>('dbClusterVersion');
    dbNodeGroupCount = registerOutput<int>('dbNodeGroupCount');
    dbNodeStorage = registerOutput<String>('dbNodeStorage');
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionType = registerOutput<String?>('encryptionType');
    maintainTime = registerOutput<String>('maintainTime');
    multiZoneVswitchLists = registerOutput<List<Map<String, dynamic>>?>(
      'multiZoneVswitchLists',
    );
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    port = registerOutput<String>('port');
    publicConnectionString = registerOutput<String>('publicConnectionString');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    usedTime = registerOutput<String?>('usedTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DbCluster] resource's state with the given [name] and [id].
  static DbCluster get(
    String name,
    pulumi.Input<String> id, {
    DbClusterState? state,
  }) {
    return DbCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouse/dbCluster:DbCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocatePublicConnection = registerOutput<bool?>(
      'allocatePublicConnection',
    );
    category = registerOutput<String>('category');
    coldStorage = registerOutput<String>('coldStorage');
    connectionString = registerOutput<String>('connectionString');
    dbClusterAccessWhiteLists = registerOutput<List<Map<String, dynamic>>?>(
      'dbClusterAccessWhiteLists',
    );
    dbClusterClass = registerOutput<String>('dbClusterClass');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterNetworkType = registerOutput<String>('dbClusterNetworkType');
    dbClusterVersion = registerOutput<String>('dbClusterVersion');
    dbNodeGroupCount = registerOutput<int>('dbNodeGroupCount');
    dbNodeStorage = registerOutput<String>('dbNodeStorage');
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionType = registerOutput<String?>('encryptionType');
    maintainTime = registerOutput<String>('maintainTime');
    multiZoneVswitchLists = registerOutput<List<Map<String, dynamic>>?>(
      'multiZoneVswitchLists',
    );
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    port = registerOutput<String>('port');
    publicConnectionString = registerOutput<String>('publicConnectionString');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    usedTime = registerOutput<String?>('usedTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}

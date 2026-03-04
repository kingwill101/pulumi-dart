import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Provides a ADB cluster resource. An ADB cluster is an isolated database
/// environment in the cloud. An ADB cluster can contain multiple user-created
/// databases.
///
/// &gt; **NOTE:** Deprecated since v1.121.0.
///
/// &gt; **DEPRECATED:** This resource  has been deprecated from version `1.121.0`. Please use new resource alicloud_adb_db_cluster.
///
/// ## Example Usage
///
/// ### Create a ADB MySQL cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "adbClusterconfig";
/// const creation = config.get("creation") || "ADB";
/// const _default = alicloud.getZones({
///     availableResourceCreation: creation,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultCluster = new alicloud.adb.Cluster("default", {
///     dbClusterVersion: "3.0",
///     dbClusterCategory: "Cluster",
///     dbNodeClass: "C8",
///     dbNodeCount: 2,
///     dbNodeStorage: 200,
///     payType: "PostPaid",
///     description: name,
///     vswitchId: defaultSwitch.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "adbClusterconfig"
/// creation = config.get("creation")
/// if creation is None:
///     creation = "ADB"
/// default = alicloud.get_zones(available_resource_creation=creation)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_cluster = alicloud.adb.Cluster("default",
///     db_cluster_version="3.0",
///     db_cluster_category="Cluster",
///     db_node_class="C8",
///     db_node_count=2,
///     db_node_storage=200,
///     pay_type="PostPaid",
///     description=name,
///     vswitch_id=default_switch.id)
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
///     var name = config.Get("name") ?? "adbClusterconfig";
///     var creation = config.Get("creation") ?? "ADB";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = creation,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultCluster = new AliCloud.Adb.Cluster("default", new()
///     {
///         DbClusterVersion = "3.0",
///         DbClusterCategory = "Cluster",
///         DbNodeClass = "C8",
///         DbNodeCount = 2,
///         DbNodeStorage = 200,
///         PayType = "PostPaid",
///         Description = name,
///         VswitchId = defaultSwitch.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "adbClusterconfig"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		creation := "ADB"
/// 		if param := cfg.Get("creation"); param != "" {
/// 			creation = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef(creation),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewCluster(ctx, "default", &adb.ClusterArgs{
/// 			DbClusterVersion:  pulumi.String("3.0"),
/// 			DbClusterCategory: pulumi.String("Cluster"),
/// 			DbNodeClass:       pulumi.String("C8"),
/// 			DbNodeCount:       pulumi.Int(2),
/// 			DbNodeStorage:     pulumi.Int(200),
/// 			PayType:           pulumi.String("PostPaid"),
/// 			Description:       pulumi.String(name),
/// 			VswitchId:         defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.adb.Cluster;
/// import com.pulumi.alicloud.adb.ClusterArgs;
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
///         final var name = config.get("name").orElse("adbClusterconfig");
///         final var creation = config.get("creation").orElse("ADB");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation(creation)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .dbClusterVersion("3.0")
///             .dbClusterCategory("Cluster")
///             .dbNodeClass("C8")
///             .dbNodeCount(2)
///             .dbNodeStorage(200)
///             .payType("PostPaid")
///             .description(name)
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: adbClusterconfig
///   creation:
///     type: string
///     default: ADB
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultCluster:
///     type: alicloud:adb:Cluster
///     name: default
///     properties:
///       dbClusterVersion: '3.0'
///       dbClusterCategory: Cluster
///       dbNodeClass: C8
///       dbNodeCount: 2
///       dbNodeStorage: 200
///       payType: PostPaid
///       description: ${name}
///       vswitchId: ${defaultSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: ${creation}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ADB cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/cluster:Cluster example am-abc12345678
/// ```
class Cluster extends pulumi.CustomResource {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  late final pulumi.Output<int> autoRenewPeriod;
  late final pulumi.Output<String?> computeResource;

  /// (Available since v1.93.0) The connection string of the ADB cluster.
  late final pulumi.Output<String> connectionString;

  /// Cluster category. Value options: `Basic`, `Cluster`.
  late final pulumi.Output<String> dbClusterCategory;
  late final pulumi.Output<String?> dbClusterClass;

  /// Cluster version. Value options: `3.0`, Default to `3.0`.
  late final pulumi.Output<String?> dbClusterVersion;

  /// The db_node_class of cluster node.
  late final pulumi.Output<String> dbNodeClass;

  /// The db_node_count of cluster node.
  late final pulumi.Output<int> dbNodeCount;

  /// The db_node_storage of cluster node.
  late final pulumi.Output<int> dbNodeStorage;

  /// The description of cluster.
  late final pulumi.Output<String> description;
  late final pulumi.Output<bool?> diskEncryption;
  late final pulumi.Output<String> diskPerformanceLevel;
  late final pulumi.Output<int> elasticIoResource;
  late final pulumi.Output<String> elasticIoResourceSize;
  late final pulumi.Output<bool?> enableSsl;
  late final pulumi.Output<String> kernelVersion;
  late final pulumi.Output<String?> kmsId;

  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  late final pulumi.Output<String> maintainTime;
  late final pulumi.Output<String> mode;
  late final pulumi.Output<String?> modifyType;

  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  late final pulumi.Output<String> payType;

  /// The payment type of the resource. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  late final pulumi.Output<String> paymentType;

  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36. Default to 1.
  late final pulumi.Output<int?> period;

  /// (Available since v1.196.0) The connection port of the ADB cluster.
  late final pulumi.Output<String> port;

  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  late final pulumi.Output<String> renewalStatus;
  late final pulumi.Output<String> resourceGroupId;

  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIps;
  late final pulumi.Output<String> status;
  late final pulumi.Output<int?> switchMode;

  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// &gt; **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~30 minutes. Please make full preparation before changing them.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> vpcId;

  /// The virtual switch ID to launch DB instances in one VPC.
  late final pulumi.Output<String?> vswitchId;

  /// The Zone to launch the DB cluster.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_adb_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    computeResource = registerOutput<String?>('computeResource');
    connectionString = registerOutput<String>('connectionString');
    dbClusterCategory = registerOutput<String>('dbClusterCategory');
    dbClusterClass = registerOutput<String?>('dbClusterClass');
    dbClusterVersion = registerOutput<String?>('dbClusterVersion');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbNodeCount = registerOutput<int>('dbNodeCount');
    dbNodeStorage = registerOutput<int>('dbNodeStorage');
    description = registerOutput<String>('description');
    diskEncryption = registerOutput<bool?>('diskEncryption');
    diskPerformanceLevel = registerOutput<String>('diskPerformanceLevel');
    elasticIoResource = registerOutput<int>('elasticIoResource');
    elasticIoResourceSize = registerOutput<String>('elasticIoResourceSize');
    enableSsl = registerOutput<bool?>('enableSsl');
    kernelVersion = registerOutput<String>('kernelVersion');
    kmsId = registerOutput<String?>('kmsId');
    maintainTime = registerOutput<String>('maintainTime');
    mode = registerOutput<String>('mode');
    modifyType = registerOutput<String?>('modifyType');
    payType = registerOutput<String>('payType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityIps = registerOutput<List<String>>('securityIps');
    status = registerOutput<String>('status');
    switchMode = registerOutput<int?>('switchMode');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:adb/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    computeResource = registerOutput<String?>('computeResource');
    connectionString = registerOutput<String>('connectionString');
    dbClusterCategory = registerOutput<String>('dbClusterCategory');
    dbClusterClass = registerOutput<String?>('dbClusterClass');
    dbClusterVersion = registerOutput<String?>('dbClusterVersion');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbNodeCount = registerOutput<int>('dbNodeCount');
    dbNodeStorage = registerOutput<int>('dbNodeStorage');
    description = registerOutput<String>('description');
    diskEncryption = registerOutput<bool?>('diskEncryption');
    diskPerformanceLevel = registerOutput<String>('diskPerformanceLevel');
    elasticIoResource = registerOutput<int>('elasticIoResource');
    elasticIoResourceSize = registerOutput<String>('elasticIoResourceSize');
    enableSsl = registerOutput<bool?>('enableSsl');
    kernelVersion = registerOutput<String>('kernelVersion');
    kmsId = registerOutput<String?>('kmsId');
    maintainTime = registerOutput<String>('maintainTime');
    mode = registerOutput<String>('mode');
    modifyType = registerOutput<String?>('modifyType');
    payType = registerOutput<String>('payType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityIps = registerOutput<List<String>>('securityIps');
    status = registerOutput<String>('status');
    switchMode = registerOutput<int?>('switchMode');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}

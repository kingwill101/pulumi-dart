import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_instance_args.dart';
import 'elastic_instance_state.dart';

/// Provides a AnalyticDB for PostgreSQL instance resource which storage type is flexible. Compared to the reserved storage ADB PG instance, you can scale up each disk and smoothly scale out nodes online.
/// For more detail product introduction, see [here](https://www.alibabacloud.com/help/doc-detail/141368.htm).
///
/// > **NOTE:** Deprecated since v1.147.0.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.147.0`. Please use new resource alicloud_gpdb_instance.
///
///
/// ## Example Usage
///
/// ### Create a AnalyticDB for PostgreSQL instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Gpdb",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     name: "vpc-123456",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     vswitchName: "vpc-123456",
/// });
/// const adbPgInstance = new alicloud.gpdb.ElasticInstance("adb_pg_instance", {
///     engine: "gpdb",
///     engineVersion: "6.0",
///     segStorageType: "cloud_essd",
///     segNodeNum: 4,
///     storageSize: 50,
///     instanceSpec: "2C16G",
///     dbInstanceDescription: "Created by terraform",
///     instanceNetworkType: "VPC",
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultSwitch.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="Gpdb")
/// default_network = alicloud.vpc.Network("default",
///     name="vpc-123456",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     zone_id=default.zones[0].id,
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     vswitch_name="vpc-123456")
/// adb_pg_instance = alicloud.gpdb.ElasticInstance("adb_pg_instance",
///     engine="gpdb",
///     engine_version="6.0",
///     seg_storage_type="cloud_essd",
///     seg_node_num=4,
///     storage_size=50,
///     instance_spec="2C16G",
///     db_instance_description="Created by terraform",
///     instance_network_type="VPC",
///     payment_type="PayAsYouGo",
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Gpdb",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         Name = "vpc-123456",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         VswitchName = "vpc-123456",
///     });
///
///     var adbPgInstance = new AliCloud.Gpdb.ElasticInstance("adb_pg_instance", new()
///     {
///         Engine = "gpdb",
///         EngineVersion = "6.0",
///         SegStorageType = "cloud_essd",
///         SegNodeNum = 4,
///         StorageSize = 50,
///         InstanceSpec = "2C16G",
///         DbInstanceDescription = "Created by terraform",
///         InstanceNetworkType = "VPC",
///         PaymentType = "PayAsYouGo",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Gpdb"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			Name:      pulumi.String("vpc-123456"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			VswitchName: pulumi.String("vpc-123456"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewElasticInstance(ctx, "adb_pg_instance", &gpdb.ElasticInstanceArgs{
/// 			Engine:                pulumi.String("gpdb"),
/// 			EngineVersion:         pulumi.String("6.0"),
/// 			SegStorageType:        pulumi.String("cloud_essd"),
/// 			SegNodeNum:            pulumi.Int(4),
/// 			StorageSize:           pulumi.Int(50),
/// 			InstanceSpec:          pulumi.String("2C16G"),
/// 			DbInstanceDescription: pulumi.String("Created by terraform"),
/// 			InstanceNetworkType:   pulumi.String("VPC"),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			VswitchId:             defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.gpdb.ElasticInstance;
/// import com.pulumi.alicloud.gpdb.ElasticInstanceArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Gpdb")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("vpc-123456")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .vswitchName("vpc-123456")
///             .build());
///
///         var adbPgInstance = new ElasticInstance("adbPgInstance", ElasticInstanceArgs.builder()
///             .engine("gpdb")
///             .engineVersion("6.0")
///             .segStorageType("cloud_essd")
///             .segNodeNum(4)
///             .storageSize(50)
///             .instanceSpec("2C16G")
///             .dbInstanceDescription("Created by terraform")
///             .instanceNetworkType("VPC")
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       name: vpc-123456
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       zoneId: ${default.zones[0].id}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       vswitchName: vpc-123456
///   adbPgInstance:
///     type: alicloud:gpdb:ElasticInstance
///     name: adb_pg_instance
///     properties:
///       engine: gpdb
///       engineVersion: '6.0'
///       segStorageType: cloud_essd
///       segNodeNum: 4
///       storageSize: 50
///       instanceSpec: 2C16G
///       dbInstanceDescription: Created by terraform
///       instanceNetworkType: VPC
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Gpdb
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/elasticInstance:ElasticInstance adb_pg_instance gp-bpxxxxxxxxxxxxxx
/// ```
class ElasticInstance extends pulumi.CustomResource {
  /// ADB PG instance connection string.
  late final pulumi.Output<String> connectionString;
  /// The edition of the instance. Valid values: `Basic`, `HighAvailability`. Default value: `HighAvailability`.
  late final pulumi.Output<String> dbInstanceCategory;
  /// The description of ADB PG instance. It is a string of 2 to 256 characters.
  late final pulumi.Output<String?> dbInstanceDescription;
  /// The ID of the encryption key. **Note:** If the `encryption_type` parameter is set to `CloudDisk`, you must specify this parameter to the encryption key that is in the same region as the disk that is specified by the EncryptionType parameter. Otherwise, leave this parameter empty.
  late final pulumi.Output<String?> encryptionKey;
  /// The type of the encryption. Valid values: `CloudDisk`. **Note:** Disk encryption cannot be disabled after it is enabled.
  late final pulumi.Output<String?> encryptionType;
  /// Database engine: `gpdb`.
  late final pulumi.Output<String> engine;
  /// Database version. Valid value is `6.0`.
  late final pulumi.Output<String> engineVersion;
  /// The network type of ADB PG instance. Only `VPC` supported now.
  late final pulumi.Output<String?> instanceNetworkType;
  /// The specification of segment nodes.
  /// * When `db_instance_category` is `HighAvailability`, Valid values: `2C16G`, `4C32G`, `16C128G`.
  /// * When `db_instance_category` is `Basic`, Valid values: `2C8G`, `4C16G`, `8C32G`, `16C64G`.
  late final pulumi.Output<String> instanceSpec;
  /// The subscription period. Valid values: [1~12]. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  late final pulumi.Output<int?> paymentDuration;
  /// The unit of the subscription period. Valid values: `Month`, `Year`. It is valid when payment_type is `Subscription`.
  /// **NOTE:** Will not take effect after modifying `payment_duration_unit` for now, if you want to renew a PayAsYouGo instance, need to do in on aliyun console.
  late final pulumi.Output<String?> paymentDurationUnit;
  /// Valid values are `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  late final pulumi.Output<String?> paymentType;
  /// (Available since v1.196.0) The connection port of the instance.
  late final pulumi.Output<String> port;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIpLists;
  /// The number of segment nodes. Minimum is `4`, max is `256`, step is `4`.
  late final pulumi.Output<int> segNodeNum;
  /// The disk type of segment nodes. Valid values: `cloud_essd`, `cloud_efficiency`.
  late final pulumi.Output<String> segStorageType;
  /// Instance status.
  late final pulumi.Output<String> status;
  /// The storage capacity of per segment node. Unit: GB. Minimum is `50`, max is `4000`, step is `50`.
  late final pulumi.Output<int> storageSize;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The virtual switch ID to launch ADB PG instances in one VPC.
  late final pulumi.Output<String> vswitchId;
  /// The Zone to launch the ADB PG instance. If specified, must be consistent with the zone where the vswitch is located.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ElasticInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticInstance]. {@macro pulumi_gpdb_elastic_instance_elastic_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticInstance(
    String name, {
    ElasticInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/elasticInstance:ElasticInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionString = registerOutput<String>('connectionString');
    this.dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    this.dbInstanceDescription = registerOutput<String?>('dbInstanceDescription');
    this.encryptionKey = registerOutput<String?>('encryptionKey');
    this.encryptionType = registerOutput<String?>('encryptionType');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.instanceNetworkType = registerOutput<String?>('instanceNetworkType');
    this.instanceSpec = registerOutput<String>('instanceSpec');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String?>('paymentType');
    this.port = registerOutput<String>('port');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.segNodeNum = registerOutput<int>('segNodeNum');
    this.segStorageType = registerOutput<String>('segStorageType');
    this.status = registerOutput<String>('status');
    this.storageSize = registerOutput<int>('storageSize');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ElasticInstance] resource's state with the given [name] and [id].
  static ElasticInstance get(
    String name,
    pulumi.Input<String> id, {
    ElasticInstanceState? state,
  }) {
    return ElasticInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ElasticInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/elasticInstance:ElasticInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionString = registerOutput<String>('connectionString');
    this.dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    this.dbInstanceDescription = registerOutput<String?>('dbInstanceDescription');
    this.encryptionKey = registerOutput<String?>('encryptionKey');
    this.encryptionType = registerOutput<String?>('encryptionType');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.instanceNetworkType = registerOutput<String?>('instanceNetworkType');
    this.instanceSpec = registerOutput<String>('instanceSpec');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String?>('paymentType');
    this.port = registerOutput<String>('port');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.segNodeNum = registerOutput<int>('segNodeNum');
    this.segStorageType = registerOutput<String>('segStorageType');
    this.status = registerOutput<String>('status');
    this.storageSize = registerOutput<int>('storageSize');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}

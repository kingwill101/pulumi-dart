import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a AnalyticDB for PostgreSQL instance resource supports replica set instances only. the AnalyticDB for PostgreSQL provides stable, reliable, and automatic scalable database services.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/api-gpdb-2016-05-03-createdbinstance)
///
/// &gt; **NOTE:** Available since v1.47.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.gpdb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, defaultGetZones]).then(([defaultGetNetworks, defaultGetZones]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: defaultGetZones.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.gpdb.Instance("default", {
///     dbInstanceCategory: "HighAvailability",
///     dbInstanceClass: "gpdb.group.segsdx1",
///     dbInstanceMode: "StorageElastic",
///     description: name,
///     engine: "gpdb",
///     engineVersion: "6.0",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.ids?.[0]),
///     instanceNetworkType: "VPC",
///     instanceSpec: "2C16G",
///     paymentType: "PayAsYouGo",
///     segStorageType: "cloud_essd",
///     segNodeNum: 4,
///     storageSize: 50,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     ipWhitelists: [{
///         securityIpList: "127.0.0.1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.gpdb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default_get_zones.ids[0])
/// default_instance = alicloud.gpdb.Instance("default",
///     db_instance_category="HighAvailability",
///     db_instance_class="gpdb.group.segsdx1",
///     db_instance_mode="StorageElastic",
///     description=name,
///     engine="gpdb",
///     engine_version="6.0",
///     zone_id=default_get_zones.ids[0],
///     instance_network_type="VPC",
///     instance_spec="2C16G",
///     payment_type="PayAsYouGo",
///     seg_storage_type="cloud_essd",
///     seg_node_num=4,
///     storage_size=50,
///     vpc_id=default_get_networks.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     ip_whitelists=[{
///         "security_ip_list": "127.0.0.1",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.Gpdb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.Gpdb.Instance("default", new()
///     {
///         DbInstanceCategory = "HighAvailability",
///         DbInstanceClass = "gpdb.group.segsdx1",
///         DbInstanceMode = "StorageElastic",
///         Description = name,
///         Engine = "gpdb",
///         EngineVersion = "6.0",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Ids[0]),
///         InstanceNetworkType = "VPC",
///         InstanceSpec = "2C16G",
///         PaymentType = "PayAsYouGo",
///         SegStorageType = "cloud_essd",
///         SegNodeNum = 4,
///         StorageSize = 50,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         IpWhitelists = new[]
///         {
///             new AliCloud.Gpdb.Inputs.InstanceIpWhitelistArgs
///             {
///                 SecurityIpList = "127.0.0.1",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := gpdb.GetZones(ctx, &gpdb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(defaultGetZones.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewInstance(ctx, "default", &gpdb.InstanceArgs{
/// 			DbInstanceCategory:  pulumi.String("HighAvailability"),
/// 			DbInstanceClass:     pulumi.String("gpdb.group.segsdx1"),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Description:         pulumi.String(name),
/// 			Engine:              pulumi.String("gpdb"),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String(defaultGetZones.Ids[0]),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			InstanceSpec:        pulumi.String("2C16G"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			SegNodeNum:          pulumi.Int(4),
/// 			StorageSize:         pulumi.Int(50),
/// 			VpcId:               pulumi.String(defaultGetNetworks.Ids[0]),
/// 			VswitchId:           pulumi.String(defaultGetSwitches.Ids[0]),
/// 			IpWhitelists: gpdb.InstanceIpWhitelistArray{
/// 				&gpdb.InstanceIpWhitelistArgs{
/// 					SecurityIpList: pulumi.String("127.0.0.1"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.inputs.InstanceIpWhitelistArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = GpdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(defaultGetZones.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceCategory("HighAvailability")
///             .dbInstanceClass("gpdb.group.segsdx1")
///             .dbInstanceMode("StorageElastic")
///             .description(name)
///             .engine("gpdb")
///             .engineVersion("6.0")
///             .zoneId(defaultGetZones.ids()[0])
///             .instanceNetworkType("VPC")
///             .instanceSpec("2C16G")
///             .paymentType("PayAsYouGo")
///             .segStorageType("cloud_essd")
///             .segNodeNum(4)
///             .storageSize(50)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .ipWhitelists(InstanceIpWhitelistArgs.builder()
///                 .securityIpList("127.0.0.1")
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
///     default: tf-example
/// resources:
///   defaultInstance:
///     type: alicloud:gpdb:Instance
///     name: default
///     properties:
///       dbInstanceCategory: HighAvailability
///       dbInstanceClass: gpdb.group.segsdx1
///       dbInstanceMode: StorageElastic
///       description: ${name}
///       engine: gpdb
///       engineVersion: '6.0'
///       zoneId: ${defaultGetZones.ids[0]}
///       instanceNetworkType: VPC
///       instanceSpec: 2C16G
///       paymentType: PayAsYouGo
///       segStorageType: cloud_essd
///       segNodeNum: 4
///       storageSize: 50
///       vpcId: ${defaultGetNetworks.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       ipWhitelists:
///         - securityIpList: 127.0.0.1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:gpdb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${defaultGetZones.ids[0]}
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
/// $ pulumi import alicloud:gpdb/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Field `availability_zone` has been deprecated from provider version 1.187.0. New field `zone_id` instead.
  late final pulumi.Output<String> availabilityZone;
  /// (Available since v1.196.0) The connection string of the instance.
  late final pulumi.Output<String> connectionString;
  /// Whether to load the sample dataset after the instance is created. Valid values: `true`, `false`.
  late final pulumi.Output<bool> createSampleData;
  /// Specifies whether to enable or disable data sharing. Default value: `closed`. Valid values:
  late final pulumi.Output<String> dataShareStatus;
  /// The db instance category. Valid values: `Basic`, `HighAvailability`.
  /// &gt; **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  late final pulumi.Output<String> dbInstanceCategory;
  /// The db instance class. see [Instance specifications](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/instance-types).
  /// &gt; **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  late final pulumi.Output<String?> dbInstanceClass;
  /// The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  late final pulumi.Output<String> dbInstanceMode;
  /// The description of the instance.
  late final pulumi.Output<String> description;
  /// The ID of the encryption key.
  /// &gt; **NOTE:** If `encryption_type` is set to `CloudDisk`, you must specify an encryption key that resides in the same region as the cloud disk that is specified by EncryptionType. Otherwise, leave this parameter empty.
  late final pulumi.Output<String?> encryptionKey;
  /// The encryption type. Valid values: `CloudDisk`.
  /// &gt; **NOTE:** Disk encryption cannot be disabled after it is enabled.
  late final pulumi.Output<String?> encryptionType;
  /// The database engine used by the instance. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/api-gpdb-2016-05-03-createdbinstance) `EngineVersion`.
  late final pulumi.Output<String> engine;
  /// The version of the database engine used by the instance.
  late final pulumi.Output<String> engineVersion;
  /// Field `instance_charge_type` has been deprecated from provider version 1.187.0. New field `payment_type` instead.
  late final pulumi.Output<String> instanceChargeType;
  /// The number of nodes. Valid values: `2`, `4`, `8`, `12`, `16`, `24`, `32`, `64`, `96`, `128`.
  late final pulumi.Output<int?> instanceGroupCount;
  /// The network type of the instance. Valid values: `VPC`.
  late final pulumi.Output<String> instanceNetworkType;
  /// The specification of segment nodes. Valid values:
  /// - If `db_instance_category` is set to `HighAvailability`, and `db_instance_mode` is set to `StorageElastic`. Valid values: `2C16G`, `4C32G`, `16C128G`.
  /// - If `db_instance_category` is set to `Basic`, and `db_instance_mode` is set to `StorageElastic`. Valid values: `2C8G`, `4C16G`, `8C32G`, `16C64G`.
  /// - If `db_instance_mode` is set to `Serverless`. Valid values: `4C16G`, `8C32G`.
  /// &gt; **NOTE:** This parameter must be passed to create a storage elastic mode instance and a serverless version instance.
  late final pulumi.Output<String?> instanceSpec;
  /// The ip whitelist. See `ip_whitelist` below.
  /// Default to creating a whitelist group with the group name "default" and security_ip_list "127.0.0.1".
  late final pulumi.Output<List<Map<String, dynamic>>> ipWhitelists;
  /// The end time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 03:00Z. start time should be later than end time.
  late final pulumi.Output<String> maintainEndTime;
  /// The start time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 02:00Z.
  late final pulumi.Output<String> maintainStartTime;
  /// The amount of coordinator node resources. Valid values: `2`, `4`, `8`, `16`, `32`.
  late final pulumi.Output<int> masterCu;
  /// The number of Master nodes. **NOTE:** Field `master_node_num` has been deprecated from provider version 1.213.0.
  late final pulumi.Output<int?> masterNodeNum;
  /// The parameters. See `parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;
  /// The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy the resource, in month. required when `payment_type` is `Subscription`. Valid values: `Year`, `Month`.
  late final pulumi.Output<String?> period;
  /// (Available since v1.196.0) The connection port of the instance.
  late final pulumi.Output<String> port;
  /// The private ip address. **NOTE:** Field `private_ip_address` has been deprecated from provider version 1.213.0.
  late final pulumi.Output<String?> privateIpAddress;
  /// The type of the product. Default value: `standard`. Valid values: `standard`, `cost-effective`.
  late final pulumi.Output<String> prodType;
  /// The ID of the enterprise resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// Resource management mode. Valid values: `resourceGroup`, `resourceQueue`.
  late final pulumi.Output<String> resourceManagementMode;
  /// Field `security_ip_list` has been deprecated from provider version 1.187.0. New field `ip_whitelist` instead.
  late final pulumi.Output<List<String>?> securityIpLists;
  /// The ESSD cloud disk performance level. Valid values: `pl0`, `pl1`, `pl2`.
  late final pulumi.Output<String> segDiskPerformanceLevel;
  /// Calculate the number of nodes. Valid values: `2` to `512`. The value range of the high-availability version of the storage elastic mode is `4` to `512`, and the value must be a multiple of `4`. The value range of the basic version of the storage elastic mode is `2` to `512`, and the value must be a multiple of `2`. The-Serverless version has a value range of `2` to `512`. The value must be a multiple of `2`.
  /// &gt; **NOTE:** This parameter must be passed in to create a storage elastic mode instance and a Serverless version instance. During the public beta of the Serverless version (from 0101, 2022 to 0131, 2022), a maximum of 12 compute nodes can be created.
  late final pulumi.Output<int> segNodeNum;
  /// The seg storage type. Valid values: `cloud_essd`. **NOTE:** If `db_instance_mode` is set to `StorageElastic`, `seg_storage_type` is required. From version 1.233.1, `seg_storage_type` cannot be modified, or set to `cloud_efficiency`. `seg_storage_type` can only be set to `cloud_essd`.
  late final pulumi.Output<String> segStorageType;
  /// The mode of the Serverless instance. Valid values: `Manual`, `Auto`. **NOTE:** `serverless_mode` is valid only when `db_instance_mode` is set to `Serverless`.
  late final pulumi.Output<String> serverlessMode;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  late final pulumi.Output<int> sslEnabled;
  /// The status of the instance.
  late final pulumi.Output<String> status;
  /// The storage capacity. Unit: GB. Valid values: `50` to `4000`.
  /// &gt; **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  late final pulumi.Output<int> storageSize;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The used time. When the parameter `period` is `Year`, the `used_time` value is `1` to `3`. When the parameter `period` is `Month`, the `used_time` value is `1` to `9`.
  late final pulumi.Output<String?> usedTime;
  /// Specifies whether to enable vector engine optimization. Default value: `disabled`. Valid values: `enabled` and `disabled`.
  late final pulumi.Output<String> vectorConfigurationStatus;
  /// The vpc ID of the resource.
  late final pulumi.Output<String> vpcId;
  /// The vswitch id.
  late final pulumi.Output<String> vswitchId;
  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_gpdb_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    connectionString = registerOutput<String>('connectionString');
    createSampleData = registerOutput<bool>('createSampleData');
    dataShareStatus = registerOutput<String>('dataShareStatus');
    dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    dbInstanceClass = registerOutput<String?>('dbInstanceClass');
    dbInstanceMode = registerOutput<String>('dbInstanceMode');
    description = registerOutput<String>('description');
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionType = registerOutput<String?>('encryptionType');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceGroupCount = registerOutput<int?>('instanceGroupCount');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    instanceSpec = registerOutput<String?>('instanceSpec');
    ipWhitelists = registerOutput<List<Map<String, dynamic>>>('ipWhitelists');
    maintainEndTime = registerOutput<String>('maintainEndTime');
    maintainStartTime = registerOutput<String>('maintainStartTime');
    masterCu = registerOutput<int>('masterCu');
    masterNodeNum = registerOutput<int?>('masterNodeNum');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    port = registerOutput<String>('port');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    prodType = registerOutput<String>('prodType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceManagementMode = registerOutput<String>('resourceManagementMode');
    securityIpLists = registerOutput<List<String>?>('securityIpLists');
    segDiskPerformanceLevel = registerOutput<String>('segDiskPerformanceLevel');
    segNodeNum = registerOutput<int>('segNodeNum');
    segStorageType = registerOutput<String>('segStorageType');
    serverlessMode = registerOutput<String>('serverlessMode');
    sslEnabled = registerOutput<int>('sslEnabled');
    status = registerOutput<String>('status');
    storageSize = registerOutput<int>('storageSize');
    tags = registerOutput<Map<String, String>?>('tags');
    usedTime = registerOutput<String?>('usedTime');
    vectorConfigurationStatus = registerOutput<String>('vectorConfigurationStatus');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    connectionString = registerOutput<String>('connectionString');
    createSampleData = registerOutput<bool>('createSampleData');
    dataShareStatus = registerOutput<String>('dataShareStatus');
    dbInstanceCategory = registerOutput<String>('dbInstanceCategory');
    dbInstanceClass = registerOutput<String?>('dbInstanceClass');
    dbInstanceMode = registerOutput<String>('dbInstanceMode');
    description = registerOutput<String>('description');
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionType = registerOutput<String?>('encryptionType');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceGroupCount = registerOutput<int?>('instanceGroupCount');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    instanceSpec = registerOutput<String?>('instanceSpec');
    ipWhitelists = registerOutput<List<Map<String, dynamic>>>('ipWhitelists');
    maintainEndTime = registerOutput<String>('maintainEndTime');
    maintainStartTime = registerOutput<String>('maintainStartTime');
    masterCu = registerOutput<int>('masterCu');
    masterNodeNum = registerOutput<int?>('masterNodeNum');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    port = registerOutput<String>('port');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    prodType = registerOutput<String>('prodType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceManagementMode = registerOutput<String>('resourceManagementMode');
    securityIpLists = registerOutput<List<String>?>('securityIpLists');
    segDiskPerformanceLevel = registerOutput<String>('segDiskPerformanceLevel');
    segNodeNum = registerOutput<int>('segNodeNum');
    segStorageType = registerOutput<String>('segStorageType');
    serverlessMode = registerOutput<String>('serverlessMode');
    sslEnabled = registerOutput<int>('sslEnabled');
    status = registerOutput<String>('status');
    storageSize = registerOutput<int>('storageSize');
    tags = registerOutput<Map<String, String>?>('tags');
    usedTime = registerOutput<String?>('usedTime');
    vectorConfigurationStatus = registerOutput<String>('vectorConfigurationStatus');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}

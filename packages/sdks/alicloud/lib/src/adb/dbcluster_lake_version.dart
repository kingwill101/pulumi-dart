import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbcluster_lake_version_args.dart';
import 'dbcluster_lake_version_state.dart';

/// Provides a AnalyticDB for MySQL (ADB) DB Cluster Lake Version resource.
///
/// For information about AnalyticDB for MySQL (ADB) DB Cluster Lake Version and how to use it, see [What is DB Cluster Lake Version](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2021-12-01-createdbcluster).
///
/// &gt; **NOTE:** Available since v1.190.0.
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
/// const _default = alicloud.adb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const defaultDBClusterLakeVersion = new alicloud.adb.DBClusterLakeVersion("default", {
///     dbClusterVersion: "5.0",
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     computeResource: "16ACU",
///     storageResource: "0ACU",
///     paymentType: "PayAsYouGo",
///     enableDefaultResourceGroup: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.adb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default_db_cluster_lake_version = alicloud.adb.DBClusterLakeVersion("default",
///     db_cluster_version="5.0",
///     vpc_id=default_get_networks.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     zone_id=default.ids[0],
///     compute_resource="16ACU",
///     storage_resource="0ACU",
///     payment_type="PayAsYouGo",
///     enable_default_resource_group=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Adb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultDBClusterLakeVersion = new AliCloud.Adb.DBClusterLakeVersion("default", new()
///     {
///         DbClusterVersion = "5.0",
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         ComputeResource = "16ACU",
///         StorageResource = "0ACU",
///         PaymentType = "PayAsYouGo",
///         EnableDefaultResourceGroup = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
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
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewDBClusterLakeVersion(ctx, "default", &adb.DBClusterLakeVersionArgs{
/// 			DbClusterVersion:           pulumi.String("5.0"),
/// 			VpcId:                      pulumi.String(defaultGetNetworks.Ids[0]),
/// 			VswitchId:                  pulumi.String(defaultGetSwitches.Ids[0]),
/// 			ZoneId:                     pulumi.String(_default.Ids[0]),
/// 			ComputeResource:            pulumi.String("16ACU"),
/// 			StorageResource:            pulumi.String("0ACU"),
/// 			PaymentType:                pulumi.String("PayAsYouGo"),
/// 			EnableDefaultResourceGroup: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersion;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersionArgs;
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
///         final var default = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var defaultDBClusterLakeVersion = new DBClusterLakeVersion("defaultDBClusterLakeVersion", DBClusterLakeVersionArgs.builder()
///             .dbClusterVersion("5.0")
///             .vpcId(defaultGetNetworks.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .zoneId(default_.ids()[0])
///             .computeResource("16ACU")
///             .storageResource("0ACU")
///             .paymentType("PayAsYouGo")
///             .enableDefaultResourceGroup(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDBClusterLakeVersion:
///     type: alicloud:adb:DBClusterLakeVersion
///     name: default
///     properties:
///       dbClusterVersion: '5.0'
///       vpcId: ${defaultGetNetworks.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       zoneId: ${default.ids[0]}
///       computeResource: 16ACU
///       storageResource: 0ACU
///       paymentType: PayAsYouGo
///       enableDefaultResourceGroup: false
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getZones
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
///         zoneId: ${default.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for MySQL (ADB) DB Cluster Lake Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/dBClusterLakeVersion:DBClusterLakeVersion example <id>
/// ```
class DBClusterLakeVersion extends pulumi.CustomResource {
  /// The ID of the backup set that you want to use to restore data.
  late final pulumi.Output<String?> backupSetId;
  /// The name of the service.
  late final pulumi.Output<String> commodityCode;
  /// The computing resources of the cluster.
  late final pulumi.Output<String> computeResource;
  /// The endpoint of the cluster.
  late final pulumi.Output<String> connectionString;
  /// The createTime of the cluster.
  late final pulumi.Output<String> createTime;
  /// The description of the cluster.
  late final pulumi.Output<String> dbClusterDescription;
  /// The version of the cluster. Valid values: `5.0`.
  late final pulumi.Output<String> dbClusterVersion;
  /// Specifies whether to enable disk encryption. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> diskEncryption;
  /// Whether to enable default allocation of resources to user_default resource groups.
  late final pulumi.Output<bool?> enableDefaultResourceGroup;
  /// Specifies whether to enable SSL encryption. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enableSsl;
  /// The engine of the database.
  late final pulumi.Output<String> engine;
  /// The engine version of the database.
  late final pulumi.Output<String> engineVersion;
  /// The time when the cluster expires.
  late final pulumi.Output<String> expireTime;
  /// Indicates whether the cluster has expired.
  late final pulumi.Output<bool> expired;
  /// The ID of the key that is used to encrypt disk data. `kms_id` is valid only when `disk_encryption` is set to `true`.
  late final pulumi.Output<String?> kmsId;
  /// The lock mode of the cluster.
  late final pulumi.Output<String> lockMode;
  /// The reason why the cluster is locked.
  late final pulumi.Output<String> lockReason;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`. **NOTE:** From version 1.245.0, `payment_type` can be set to `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The subscription period of the subscription cluster. Valid values: `1` to `9`, `12`, `24`, `36`.
  late final pulumi.Output<int?> period;
  /// The port that is used to access the cluster.
  late final pulumi.Output<String> port;
  /// The product form of the cluster. Valid values:
  /// - `IntegrationForm`: Integrated.
  /// - `LegacyForm`: Data Lakehouse Edition.
  late final pulumi.Output<String> productForm;
  /// The edition of the cluster. Valid values:
  /// - `BasicVersion`: Basic Edition.
  /// - `EnterpriseVersion`: Enterprise Edition.
  /// &gt; **NOTE:** `product_version` must be specified only when `product_form` is set to `IntegrationForm`.
  late final pulumi.Output<String> productVersion;
  /// The number of reserved resource nodes.
  late final pulumi.Output<int> reservedNodeCount;
  /// The specifications of reserved resource nodes.
  late final pulumi.Output<String> reservedNodeSize;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The point in time to which you want to restore data from the backup set.
  late final pulumi.Output<String?> restoreToTime;
  /// The method that you want to use to restore data. Valid values:
  late final pulumi.Output<String?> restoreType;
  /// The ID of the secondary zone.
  late final pulumi.Output<String?> secondaryVswitchId;
  /// The ID of the secondary vSwitch.
  late final pulumi.Output<String?> secondaryZoneId;
  /// The IP addresses in an IP address whitelist of a cluster. Separate multiple IP addresses with commas (,). You can add a maximum of 500 different IP addresses to a whitelist. The entries in the IP address whitelist must be in one of the following formats:
  /// - IP addresses, such as 10.23.XX.XX.
  /// - CIDR blocks, such as 10.23.xx.xx/24. In this example, 24 indicates that the prefix of each IP address in the IP whitelist is 24 bits in length. You can replace 24 with a value within the range of 1 to 32.
  late final pulumi.Output<String> securityIps;
  /// The ID of the source AnalyticDB for MySQL Data Warehouse Edition cluster.
  late final pulumi.Output<String?> sourceDbClusterId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The storage resources of the cluster.
  late final pulumi.Output<String> storageResource;
  /// The vpc ID of the resource.
  late final pulumi.Output<String> vpcId;
  /// The ID of the vSwitch.
  late final pulumi.Output<String> vswitchId;
  /// The zone ID of the resource.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DBClusterLakeVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DBClusterLakeVersion]. {@macro pulumi_adb_d_bcluster_lake_version_dbcluster_lake_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DBClusterLakeVersion(
    String name, {
    DBClusterLakeVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/dBClusterLakeVersion:DBClusterLakeVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupSetId = registerOutput<String?>('backupSetId');
    commodityCode = registerOutput<String>('commodityCode');
    computeResource = registerOutput<String>('computeResource');
    connectionString = registerOutput<String>('connectionString');
    createTime = registerOutput<String>('createTime');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterVersion = registerOutput<String>('dbClusterVersion');
    diskEncryption = registerOutput<bool?>('diskEncryption');
    enableDefaultResourceGroup = registerOutput<bool?>('enableDefaultResourceGroup');
    enableSsl = registerOutput<bool?>('enableSsl');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    expireTime = registerOutput<String>('expireTime');
    expired = registerOutput<bool>('expired');
    kmsId = registerOutput<String?>('kmsId');
    lockMode = registerOutput<String>('lockMode');
    lockReason = registerOutput<String>('lockReason');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    productForm = registerOutput<String>('productForm');
    productVersion = registerOutput<String>('productVersion');
    reservedNodeCount = registerOutput<int>('reservedNodeCount');
    reservedNodeSize = registerOutput<String>('reservedNodeSize');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    restoreToTime = registerOutput<String?>('restoreToTime');
    restoreType = registerOutput<String?>('restoreType');
    secondaryVswitchId = registerOutput<String?>('secondaryVswitchId');
    secondaryZoneId = registerOutput<String?>('secondaryZoneId');
    securityIps = registerOutput<String>('securityIps');
    sourceDbClusterId = registerOutput<String?>('sourceDbClusterId');
    status = registerOutput<String>('status');
    storageResource = registerOutput<String>('storageResource');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DBClusterLakeVersion] resource's state with the given [name] and [id].
  static DBClusterLakeVersion get(
    String name,
    pulumi.Input<String> id, {
    DBClusterLakeVersionState? state,
  }) {
    return DBClusterLakeVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DBClusterLakeVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/dBClusterLakeVersion:DBClusterLakeVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupSetId = registerOutput<String?>('backupSetId');
    commodityCode = registerOutput<String>('commodityCode');
    computeResource = registerOutput<String>('computeResource');
    connectionString = registerOutput<String>('connectionString');
    createTime = registerOutput<String>('createTime');
    dbClusterDescription = registerOutput<String>('dbClusterDescription');
    dbClusterVersion = registerOutput<String>('dbClusterVersion');
    diskEncryption = registerOutput<bool?>('diskEncryption');
    enableDefaultResourceGroup = registerOutput<bool?>('enableDefaultResourceGroup');
    enableSsl = registerOutput<bool?>('enableSsl');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    expireTime = registerOutput<String>('expireTime');
    expired = registerOutput<bool>('expired');
    kmsId = registerOutput<String?>('kmsId');
    lockMode = registerOutput<String>('lockMode');
    lockReason = registerOutput<String>('lockReason');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    productForm = registerOutput<String>('productForm');
    productVersion = registerOutput<String>('productVersion');
    reservedNodeCount = registerOutput<int>('reservedNodeCount');
    reservedNodeSize = registerOutput<String>('reservedNodeSize');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    restoreToTime = registerOutput<String?>('restoreToTime');
    restoreType = registerOutput<String?>('restoreType');
    secondaryVswitchId = registerOutput<String?>('secondaryVswitchId');
    secondaryZoneId = registerOutput<String?>('secondaryZoneId');
    securityIps = registerOutput<String>('securityIps');
    sourceDbClusterId = registerOutput<String?>('sourceDbClusterId');
    status = registerOutput<String>('status');
    storageResource = registerOutput<String>('storageResource');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbcluster_args.dart';
import 'dbcluster_state.dart';

/// ## Import
///
/// AnalyticDB for MySQL (ADB) DBCluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/dBCluster:DBCluster example <id>
/// ```
class DBCluster extends pulumi.CustomResource {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when `payment_type` is `Subscription`. Valid values: `1`, `2`, `3`, `6`, `12`, `24`, `36`. Default Value: `1`.
  late final pulumi.Output<int> autoRenewPeriod;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources. For more information, see [ComputeResource](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describecomputeresource)
  late final pulumi.Output<String?> computeResource;
  /// The connection string of the cluster.
  late final pulumi.Output<String> connectionString;
  /// The db cluster category. Valid values: `Basic`, `Cluster`, `MixedStorage`.
  late final pulumi.Output<String> dbClusterCategory;
  /// It duplicates with attribute db_node_class and is deprecated from 1.121.2.
  late final pulumi.Output<String?> dbClusterClass;
  /// The db cluster version. Valid values: `3.0`. Default Value: `3.0`.
  late final pulumi.Output<String?> dbClusterVersion;
  /// The db node class. For more information, see [DBClusterClass](https://help.aliyun.com/document_detail/190519.html)
  late final pulumi.Output<String> dbNodeClass;
  /// The db node count.
  late final pulumi.Output<int> dbNodeCount;
  /// The db node storage.
  late final pulumi.Output<int> dbNodeStorage;
  /// The description of DBCluster.
  late final pulumi.Output<String> description;
  /// Specifies whether to enable disk encryption. Default Value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> diskEncryption;
  /// The ESSD performance level. Default Value: `PL1`. Valid values: `PL1`, `PL2`, `PL3`.
  late final pulumi.Output<String> diskPerformanceLevel;
  /// The elastic io resource.
  late final pulumi.Output<int> elasticIoResource;
  /// The specifications of a single elastic resource node. Default Value: `8Core64GB`. Valid values:
  /// - `8Core64GB`: If you set `elastic_io_resource_size` to `8Core64GB`, the specifications of an EIU are 24 cores and 192 GB memory.
  /// - `12Core96GB`: If you set `elastic_io_resource_size` to `12Core96GB`, the specifications of an EIU are 36 cores and 288 GB memory.
  /// - `16Core128GB`: (Available since v1.237.0)If you set `elastic_io_resource_size` to `16Core128GB`, the specifications of an EIU are 48 cores and 384 GB memory.
  late final pulumi.Output<String> elasticIoResourceSize;
  /// Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enableSsl;
  /// The minor version to which you want to update.
  late final pulumi.Output<String> kernelVersion;
  /// The Key Management Service (KMS) ID that is used for disk encryption. `kms_id` is valid only when `disk_encryption` is set to `true`.
  late final pulumi.Output<String?> kmsId;
  /// The maintenance window of the cluster. Format: hh:mmZ-hh:mmZ.
  late final pulumi.Output<String> maintainTime;
  /// The mode of the cluster. Valid values: `reserver`, `flexible`.
  late final pulumi.Output<String> mode;
  /// The modify type.
  late final pulumi.Output<String?> modifyType;
  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  late final pulumi.Output<String> payType;
  /// The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy DB cluster (in month). It is valid when `payment_type` is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  late final pulumi.Output<int?> period;
  /// (Available since v1.196.0) The connection port of the ADB cluster.
  late final pulumi.Output<String> port;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  late final pulumi.Output<String> renewalStatus;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIps;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The time when to perform the update. Valid values:
  late final pulumi.Output<int?> switchMode;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// &gt; **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~30 minutes. Please make full preparation before changing them.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The vpc ID of the resource.
  late final pulumi.Output<String> vpcId;
  /// The vswitch id.
  late final pulumi.Output<String?> vswitchId;
  /// The zone ID of the resource.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DBCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DBCluster]. {@macro pulumi_adb_d_bcluster_dbcluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DBCluster(
    String name, {
    DBClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/dBCluster:DBCluster',
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

  /// Gets an existing [DBCluster] resource's state with the given [name] and [id].
  static DBCluster get(
    String name,
    pulumi.Input<String> id, {
    DBClusterState? state,
  }) {
    return DBCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DBCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/dBCluster:DBCluster',
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

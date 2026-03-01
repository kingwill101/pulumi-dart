// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_d_bcluster_dbcluster_args_doc}
/// The set of arguments for DBCluster.
/// {@endtemplate}
/// {@macro pulumi_adb_d_bcluster_dbcluster_args_doc}
class DBClusterArgs {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when `payment_type` is `Subscription`. Valid values: `1`, `2`, `3`, `6`, `12`, `24`, `36`. Default Value: `1`.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources. For more information, see [ComputeResource](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describecomputeresource)
  final pulumi.Input<String>? computeResource;
  /// The db cluster category. Valid values: `Basic`, `Cluster`, `MixedStorage`.
  final pulumi.Input<String> dbClusterCategory;
  /// It duplicates with attribute db_node_class and is deprecated from 1.121.2.
  final pulumi.Input<String>? dbClusterClass;
  /// The db cluster version. Valid values: `3.0`. Default Value: `3.0`.
  final pulumi.Input<String>? dbClusterVersion;
  /// The db node class. For more information, see [DBClusterClass](https://help.aliyun.com/document_detail/190519.html)
  final pulumi.Input<String>? dbNodeClass;
  /// The db node count.
  final pulumi.Input<int>? dbNodeCount;
  /// The db node storage.
  final pulumi.Input<int>? dbNodeStorage;
  /// The description of DBCluster.
  final pulumi.Input<String>? description;
  /// Specifies whether to enable disk encryption. Default Value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? diskEncryption;
  /// The ESSD performance level. Default Value: `PL1`. Valid values: `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? diskPerformanceLevel;
  /// The elastic io resource.
  final pulumi.Input<int>? elasticIoResource;
  /// The specifications of a single elastic resource node. Default Value: `8Core64GB`. Valid values:
  /// - `8Core64GB`: If you set `elastic_io_resource_size` to `8Core64GB`, the specifications of an EIU are 24 cores and 192 GB memory.
  /// - `12Core96GB`: If you set `elastic_io_resource_size` to `12Core96GB`, the specifications of an EIU are 36 cores and 288 GB memory.
  /// - `16Core128GB`: (Available since v1.237.0)If you set `elastic_io_resource_size` to `16Core128GB`, the specifications of an EIU are 48 cores and 384 GB memory.
  final pulumi.Input<String>? elasticIoResourceSize;
  /// Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableSsl;
  /// The minor version to which you want to update.
  final pulumi.Input<String>? kernelVersion;
  /// The Key Management Service (KMS) ID that is used for disk encryption. `kms_id` is valid only when `disk_encryption` is set to `true`.
  final pulumi.Input<String>? kmsId;
  /// The maintenance window of the cluster. Format: hh:mmZ-hh:mmZ.
  final pulumi.Input<String>? maintainTime;
  /// The mode of the cluster. Valid values: `reserver`, `flexible`.
  final pulumi.Input<String> mode;
  /// The modify type.
  final pulumi.Input<String>? modifyType;
  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  final pulumi.Input<String>? payType;
  /// The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy DB cluster (in month). It is valid when `payment_type` is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  final pulumi.Input<int>? period;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  /// The time when to perform the update. Valid values:
  final pulumi.Input<int>? switchMode;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~30 minutes. Please make full preparation before changing them.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vpc ID of the resource.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DBClusterArgs].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when `payment_type` is `Subscription`. Valid values: `1`, `2`, `3`, `6`, `12`, `24`, `36`. Default Value: `1`.
  /// [computeResource] The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources. For more information, see [ComputeResource](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describecomputeresource)
  /// [dbClusterCategory] The db cluster category. Valid values: `Basic`, `Cluster`, `MixedStorage`.
  /// [dbClusterClass] It duplicates with attribute db_node_class and is deprecated from 1.121.2.
  /// [dbClusterVersion] The db cluster version. Valid values: `3.0`. Default Value: `3.0`.
  /// [dbNodeClass] The db node class. For more information, see [DBClusterClass](https://help.aliyun.com/document_detail/190519.html)
  /// [dbNodeCount] The db node count.
  /// [dbNodeStorage] The db node storage.
  /// [description] The description of DBCluster.
  /// [diskEncryption] Specifies whether to enable disk encryption. Default Value: `false`. Valid values: `true`, `false`.
  /// [diskPerformanceLevel] The ESSD performance level. Default Value: `PL1`. Valid values: `PL1`, `PL2`, `PL3`.
  /// [elasticIoResource] The elastic io resource.
  /// [elasticIoResourceSize] The specifications of a single elastic resource node. Default Value: `8Core64GB`. Valid values:
  /// [enableSsl] Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  /// [kernelVersion] The minor version to which you want to update.
  /// [kmsId] The Key Management Service (KMS) ID that is used for disk encryption. `kms_id` is valid only when `disk_encryption` is set to `true`.
  /// [maintainTime] The maintenance window of the cluster. Format: hh:mmZ-hh:mmZ.
  /// [mode] The mode of the cluster. Valid values: `reserver`, `flexible`.
  /// [modifyType] The modify type.
  /// [payType] Field `pay_type` has been deprecated. New field `payment_type` instead.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  /// [period] The duration that you will buy DB cluster (in month). It is valid when `payment_type` is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityIps] List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [switchMode] The time when to perform the update. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The vpc ID of the resource.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the resource.
  DBClusterArgs({
    int? autoRenewPeriod,
    String? computeResource,
    required String dbClusterCategory,
    String? dbClusterClass,
    String? dbClusterVersion,
    String? dbNodeClass,
    int? dbNodeCount,
    int? dbNodeStorage,
    String? description,
    bool? diskEncryption,
    String? diskPerformanceLevel,
    int? elasticIoResource,
    String? elasticIoResourceSize,
    bool? enableSsl,
    String? kernelVersion,
    String? kmsId,
    String? maintainTime,
    required String mode,
    String? modifyType,
    String? payType,
    String? paymentType,
    int? period,
    String? renewalStatus,
    String? resourceGroupId,
    List<String>? securityIps,
    int? switchMode,
    Map<String, String>? tags,
    String? vpcId,
    String? vswitchId,
    String? zoneId,
  }) :
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      computeResource = pulumi.Input.asOptionalInput<String>(computeResource),
      dbClusterCategory = pulumi.Input.asInput<String>(dbClusterCategory),
      dbClusterClass = pulumi.Input.asOptionalInput<String>(dbClusterClass),
      dbClusterVersion = pulumi.Input.asOptionalInput<String>(dbClusterVersion),
      dbNodeClass = pulumi.Input.asOptionalInput<String>(dbNodeClass),
      dbNodeCount = pulumi.Input.asOptionalInput<int>(dbNodeCount),
      dbNodeStorage = pulumi.Input.asOptionalInput<int>(dbNodeStorage),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskEncryption = pulumi.Input.asOptionalInput<bool>(diskEncryption),
      diskPerformanceLevel = pulumi.Input.asOptionalInput<String>(diskPerformanceLevel),
      elasticIoResource = pulumi.Input.asOptionalInput<int>(elasticIoResource),
      elasticIoResourceSize = pulumi.Input.asOptionalInput<String>(elasticIoResourceSize),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      kernelVersion = pulumi.Input.asOptionalInput<String>(kernelVersion),
      kmsId = pulumi.Input.asOptionalInput<String>(kmsId),
      maintainTime = pulumi.Input.asOptionalInput<String>(maintainTime),
      mode = pulumi.Input.asInput<String>(mode),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      payType = pulumi.Input.asOptionalInput<String>(payType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityIps = pulumi.Input.asOptionalInput<List<String>>(securityIps),
      switchMode = pulumi.Input.asOptionalInput<int>(switchMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'computeResource': ?computeResource,
      'dbClusterCategory': dbClusterCategory,
      'dbClusterClass': ?dbClusterClass,
      'dbClusterVersion': ?dbClusterVersion,
      'dbNodeClass': ?dbNodeClass,
      'dbNodeCount': ?dbNodeCount,
      'dbNodeStorage': ?dbNodeStorage,
      'description': ?description,
      'diskEncryption': ?diskEncryption,
      'diskPerformanceLevel': ?diskPerformanceLevel,
      'elasticIoResource': ?elasticIoResource,
      'elasticIoResourceSize': ?elasticIoResourceSize,
      'enableSsl': ?enableSsl,
      'kernelVersion': ?kernelVersion,
      'kmsId': ?kmsId,
      'maintainTime': ?maintainTime,
      'mode': mode,
      'modifyType': ?modifyType,
      'payType': ?payType,
      'paymentType': ?paymentType,
      'period': ?period,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'securityIps': ?securityIps,
      'switchMode': ?switchMode,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DBClusterArgs.fromMap(Map<String, dynamic> map) {
    return DBClusterArgs(
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      computeResource: map['computeResource'] == null ? null : map['computeResource'] as String,
      dbClusterCategory: map['dbClusterCategory'] as String,
      dbClusterClass: map['dbClusterClass'] == null ? null : map['dbClusterClass'] as String,
      dbClusterVersion: map['dbClusterVersion'] == null ? null : map['dbClusterVersion'] as String,
      dbNodeClass: map['dbNodeClass'] == null ? null : map['dbNodeClass'] as String,
      dbNodeCount: map['dbNodeCount'] == null ? null : map['dbNodeCount'] as int,
      dbNodeStorage: map['dbNodeStorage'] == null ? null : map['dbNodeStorage'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      diskEncryption: map['diskEncryption'] == null ? null : map['diskEncryption'] as bool,
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : map['diskPerformanceLevel'] as String,
      elasticIoResource: map['elasticIoResource'] == null ? null : map['elasticIoResource'] as int,
      elasticIoResourceSize: map['elasticIoResourceSize'] == null ? null : map['elasticIoResourceSize'] as String,
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'] as bool,
      kernelVersion: map['kernelVersion'] == null ? null : map['kernelVersion'] as String,
      kmsId: map['kmsId'] == null ? null : map['kmsId'] as String,
      maintainTime: map['maintainTime'] == null ? null : map['maintainTime'] as String,
      mode: map['mode'] as String,
      modifyType: map['modifyType'] == null ? null : map['modifyType'] as String,
      payType: map['payType'] == null ? null : map['payType'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityIps: map['securityIps'] == null ? null : (map['securityIps'] as List).cast<String>(),
      switchMode: map['switchMode'] == null ? null : map['switchMode'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


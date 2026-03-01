// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_adb_cluster_cluster_args_doc}
class ClusterArgs {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  final pulumi.Input<String>? computeResource;
  /// Cluster category. Value options: `Basic`, `Cluster`.
  final pulumi.Input<String> dbClusterCategory;
  final pulumi.Input<String>? dbClusterClass;
  /// Cluster version. Value options: `3.0`, Default to `3.0`.
  final pulumi.Input<String>? dbClusterVersion;
  /// The db_node_class of cluster node.
  final pulumi.Input<String>? dbNodeClass;
  /// The db_node_count of cluster node.
  final pulumi.Input<int>? dbNodeCount;
  /// The db_node_storage of cluster node.
  final pulumi.Input<int>? dbNodeStorage;
  /// The description of cluster.
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? diskEncryption;
  final pulumi.Input<String>? diskPerformanceLevel;
  final pulumi.Input<int>? elasticIoResource;
  final pulumi.Input<String>? elasticIoResourceSize;
  final pulumi.Input<bool>? enableSsl;
  final pulumi.Input<String>? kernelVersion;
  final pulumi.Input<String>? kmsId;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  final pulumi.Input<String>? maintainTime;
  final pulumi.Input<String> mode;
  final pulumi.Input<String>? modifyType;
  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  final pulumi.Input<String>? payType;
  /// The payment type of the resource. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36. Default to 1.
  final pulumi.Input<int>? period;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  final pulumi.Input<String>? resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  final pulumi.Input<int>? switchMode;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~30 minutes. Please make full preparation before changing them.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the DB cluster.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterArgs].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [computeResource] Optional.
  /// [dbClusterCategory] Cluster category. Value options: `Basic`, `Cluster`.
  /// [dbClusterClass] Optional.
  /// [dbClusterVersion] Cluster version. Value options: `3.0`, Default to `3.0`.
  /// [dbNodeClass] The db_node_class of cluster node.
  /// [dbNodeCount] The db_node_count of cluster node.
  /// [dbNodeStorage] The db_node_storage of cluster node.
  /// [description] The description of cluster.
  /// [diskEncryption] Optional.
  /// [diskPerformanceLevel] Optional.
  /// [elasticIoResource] Optional.
  /// [elasticIoResourceSize] Optional.
  /// [enableSsl] Optional.
  /// [kernelVersion] Optional.
  /// [kmsId] Optional.
  /// [maintainTime] Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  /// [mode] Required.
  /// [modifyType] Optional.
  /// [payType] Field `pay_type` has been deprecated. New field `payment_type` instead.
  /// [paymentType] The payment type of the resource. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  /// [period] The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36. Default to 1.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [resourceGroupId] Optional.
  /// [securityIps] List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [switchMode] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] Optional.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB cluster.
  ClusterArgs({
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

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
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


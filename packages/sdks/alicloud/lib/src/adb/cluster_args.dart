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
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? computeResource,
    required pulumi.Output<String> dbClusterCategory,
    pulumi.Output<String>? dbClusterClass,
    pulumi.Output<String>? dbClusterVersion,
    pulumi.Output<String>? dbNodeClass,
    pulumi.Output<int>? dbNodeCount,
    pulumi.Output<int>? dbNodeStorage,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? diskEncryption,
    pulumi.Output<String>? diskPerformanceLevel,
    pulumi.Output<int>? elasticIoResource,
    pulumi.Output<String>? elasticIoResourceSize,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<String>? kernelVersion,
    pulumi.Output<String>? kmsId,
    pulumi.Output<String>? maintainTime,
    required pulumi.Output<String> mode,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? payType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityIps,
    pulumi.Output<int>? switchMode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
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
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      computeResource: map['computeResource'] == null ? null : pulumi.Output.create<String>(map['computeResource'] as String),
      dbClusterCategory: pulumi.Output.create<String>(map['dbClusterCategory'] as String),
      dbClusterClass: map['dbClusterClass'] == null ? null : pulumi.Output.create<String>(map['dbClusterClass'] as String),
      dbClusterVersion: map['dbClusterVersion'] == null ? null : pulumi.Output.create<String>(map['dbClusterVersion'] as String),
      dbNodeClass: map['dbNodeClass'] == null ? null : pulumi.Output.create<String>(map['dbNodeClass'] as String),
      dbNodeCount: map['dbNodeCount'] == null ? null : pulumi.Output.create<int>(map['dbNodeCount'] as int),
      dbNodeStorage: map['dbNodeStorage'] == null ? null : pulumi.Output.create<int>(map['dbNodeStorage'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskEncryption: map['diskEncryption'] == null ? null : pulumi.Output.create<bool>(map['diskEncryption'] as bool),
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : pulumi.Output.create<String>(map['diskPerformanceLevel'] as String),
      elasticIoResource: map['elasticIoResource'] == null ? null : pulumi.Output.create<int>(map['elasticIoResource'] as int),
      elasticIoResourceSize: map['elasticIoResourceSize'] == null ? null : pulumi.Output.create<String>(map['elasticIoResourceSize'] as String),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      kernelVersion: map['kernelVersion'] == null ? null : pulumi.Output.create<String>(map['kernelVersion'] as String),
      kmsId: map['kmsId'] == null ? null : pulumi.Output.create<String>(map['kmsId'] as String),
      maintainTime: map['maintainTime'] == null ? null : pulumi.Output.create<String>(map['maintainTime'] as String),
      mode: pulumi.Output.create<String>(map['mode'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      payType: map['payType'] == null ? null : pulumi.Output.create<String>(map['payType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<List<String>>((map['securityIps'] as List).cast<String>()),
      switchMode: map['switchMode'] == null ? null : pulumi.Output.create<int>(map['switchMode'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}


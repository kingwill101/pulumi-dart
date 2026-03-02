// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  final pulumi.Input<String>? computeResource;
  /// (Available since v1.93.0) The connection string of the ADB cluster.
  final pulumi.Input<String>? connectionString;
  /// Cluster category. Value options: `Basic`, `Cluster`.
  final pulumi.Input<String>? dbClusterCategory;
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
  final pulumi.Input<String>? mode;
  final pulumi.Input<String>? modifyType;
  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  final pulumi.Input<String>? payType;
  /// The payment type of the resource. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36. Default to 1.
  final pulumi.Input<int>? period;
  /// (Available since v1.196.0) The connection port of the ADB cluster.
  final pulumi.Input<String>? port;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  final pulumi.Input<String>? resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  final pulumi.Input<String>? status;
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

  /// Creates a new [ClusterState].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [computeResource] Optional.
  /// [connectionString] (Available since v1.93.0) The connection string of the ADB cluster.
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
  /// [mode] Optional.
  /// [modifyType] Optional.
  /// [payType] Field `pay_type` has been deprecated. New field `payment_type` instead.
  /// [paymentType] The payment type of the resource. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  /// [period] The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36. Default to 1.
  /// [port] (Available since v1.196.0) The connection port of the ADB cluster.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [resourceGroupId] Optional.
  /// [securityIps] List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [status] Optional.
  /// [switchMode] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] Optional.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB cluster.
  ClusterState({
    this.autoRenewPeriod,
    this.computeResource,
    this.connectionString,
    this.dbClusterCategory,
    this.dbClusterClass,
    this.dbClusterVersion,
    this.dbNodeClass,
    this.dbNodeCount,
    this.dbNodeStorage,
    this.description,
    this.diskEncryption,
    this.diskPerformanceLevel,
    this.elasticIoResource,
    this.elasticIoResourceSize,
    this.enableSsl,
    this.kernelVersion,
    this.kmsId,
    this.maintainTime,
    this.mode,
    this.modifyType,
    this.payType,
    this.paymentType,
    this.period,
    this.port,
    this.renewalStatus,
    this.resourceGroupId,
    this.securityIps,
    this.status,
    this.switchMode,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'computeResource': ?computeResource,
      'connectionString': ?connectionString,
      'dbClusterCategory': ?dbClusterCategory,
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
      'mode': ?mode,
      'modifyType': ?modifyType,
      'payType': ?payType,
      'paymentType': ?paymentType,
      'period': ?period,
      'port': ?port,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'securityIps': ?securityIps,
      'status': ?status,
      'switchMode': ?switchMode,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as int).input(),
      computeResource: map['computeResource'] == null ? null : (map['computeResource']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      dbClusterCategory: map['dbClusterCategory'] == null ? null : (map['dbClusterCategory']! as String).input(),
      dbClusterClass: map['dbClusterClass'] == null ? null : (map['dbClusterClass']! as String).input(),
      dbClusterVersion: map['dbClusterVersion'] == null ? null : (map['dbClusterVersion']! as String).input(),
      dbNodeClass: map['dbNodeClass'] == null ? null : (map['dbNodeClass']! as String).input(),
      dbNodeCount: map['dbNodeCount'] == null ? null : (map['dbNodeCount']! as int).input(),
      dbNodeStorage: map['dbNodeStorage'] == null ? null : (map['dbNodeStorage']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskEncryption: map['diskEncryption'] == null ? null : (map['diskEncryption']! as bool).input(),
      diskPerformanceLevel: map['diskPerformanceLevel'] == null ? null : (map['diskPerformanceLevel']! as String).input(),
      elasticIoResource: map['elasticIoResource'] == null ? null : (map['elasticIoResource']! as int).input(),
      elasticIoResourceSize: map['elasticIoResourceSize'] == null ? null : (map['elasticIoResourceSize']! as String).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']! as bool).input(),
      kernelVersion: map['kernelVersion'] == null ? null : (map['kernelVersion']! as String).input(),
      kmsId: map['kmsId'] == null ? null : (map['kmsId']! as String).input(),
      maintainTime: map['maintainTime'] == null ? null : (map['maintainTime']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType']! as String).input(),
      payType: map['payType'] == null ? null : (map['payType']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityIps: map['securityIps'] == null ? null : ((map['securityIps']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      switchMode: map['switchMode'] == null ? null : (map['switchMode']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Auto renew of dataCenter-1,`true` or `false`. System default to `false`, valid when pay_type = PrePaid.
  final pulumi.Input<bool>? autoRenew;
  /// Period of dataCenter-1 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  final pulumi.Input<int>? autoRenewPeriod;
  /// Cassandra cluster name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  final pulumi.Input<String>? clusterName;
  /// Cassandra dataCenter-1 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  final pulumi.Input<String>? dataCenterName;
  /// User-defined Cassandra dataCenter-1 one node's storage space.Unit: GB. Value range:
  /// - Custom storage space; value range: [160, 2000].
  /// - 80-GB increments.
  final pulumi.Input<int>? diskSize;
  /// The disk type of Cassandra dataCenter-1. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  final pulumi.Input<String>? diskType;
  final pulumi.Input<bool>? enablePublic;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  final pulumi.Input<String>? instanceType;
  /// Set the instance's IP whitelist in VPC network.
  final pulumi.Input<String>? ipWhite;
  /// The end time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainStartTime;
  /// Cassandra major version. Now only support version `3.11`.
  final pulumi.Input<String>? majorVersion;
  /// The node count of Cassandra dataCenter-1 default to 2.
  final pulumi.Input<int>? nodeCount;
  final pulumi.Input<String>? password;
  /// The pay type of Cassandra dataCenter-1. Valid values are `Subscription`, `PayAsYouGo`,System default to `PayAsYouGo`.
  final pulumi.Input<String>? payType;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? periodUnit;
  final pulumi.Input<List<String>>? publicPoints;
  /// A list of security group ids to associate with.
  ///
  /// > **NOTE:** Now cluster_name,data_center_name,instance_type,node_count,disk_type,disk_size,maintain_start_time,maintain_end_time,tags,ip_white,security_groups can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  final pulumi.Input<List<String>>? securityGroups;
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vswitch_id of dataCenter-1, can not empty.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the Cassandra cluster. If vswitch_id is not empty, this zone_id can be "" or consistent.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterState].
  /// [autoRenew] Auto renew of dataCenter-1,`true` or `false`. System default to `false`, valid when pay_type = PrePaid.
  /// [autoRenewPeriod] Period of dataCenter-1 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  /// [clusterName] Cassandra cluster name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  /// [dataCenterName] Cassandra dataCenter-1 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  /// [diskSize] User-defined Cassandra dataCenter-1 one node's storage space.Unit: GB. Value range:
  /// [diskType] The disk type of Cassandra dataCenter-1. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  /// [enablePublic] Optional.
  /// [instanceType] Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  /// [ipWhite] Set the instance's IP whitelist in VPC network.
  /// [maintainEndTime] The end time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  /// [maintainStartTime] The start time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  /// [majorVersion] Cassandra major version. Now only support version `3.11`.
  /// [nodeCount] The node count of Cassandra dataCenter-1 default to 2.
  /// [password] Optional.
  /// [payType] The pay type of Cassandra dataCenter-1. Valid values are `Subscription`, `PayAsYouGo`,System default to `PayAsYouGo`.
  /// [period] Optional.
  /// [periodUnit] Optional.
  /// [publicPoints] Optional.
  /// [securityGroups] A list of security group ids to associate with.
  /// [status] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The vswitch_id of dataCenter-1, can not empty.
  /// [zoneId] The Zone to launch the Cassandra cluster. If vswitch_id is not empty, this zone_id can be "" or consistent.
  ClusterState({
    this.autoRenew,
    this.autoRenewPeriod,
    this.clusterName,
    this.dataCenterName,
    this.diskSize,
    this.diskType,
    this.enablePublic,
    this.instanceType,
    this.ipWhite,
    this.maintainEndTime,
    this.maintainStartTime,
    this.majorVersion,
    this.nodeCount,
    this.password,
    this.payType,
    this.period,
    this.periodUnit,
    this.publicPoints,
    this.securityGroups,
    this.status,
    this.tags,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'clusterName': ?clusterName,
      'dataCenterName': ?dataCenterName,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'enablePublic': ?enablePublic,
      'instanceType': ?instanceType,
      'ipWhite': ?ipWhite,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'majorVersion': ?majorVersion,
      'nodeCount': ?nodeCount,
      'password': ?password,
      'payType': ?payType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'publicPoints': ?publicPoints,
      'securityGroups': ?securityGroups,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as int).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      dataCenterName: map['dataCenterName'] == null ? null : (map['dataCenterName']! as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize']! as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      enablePublic: map['enablePublic'] == null ? null : (map['enablePublic']! as bool).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      ipWhite: map['ipWhite'] == null ? null : (map['ipWhite']! as String).input(),
      maintainEndTime: map['maintainEndTime'] == null ? null : (map['maintainEndTime']! as String).input(),
      maintainStartTime: map['maintainStartTime'] == null ? null : (map['maintainStartTime']! as String).input(),
      majorVersion: map['majorVersion'] == null ? null : (map['majorVersion']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      payType: map['payType'] == null ? null : (map['payType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      publicPoints: map['publicPoints'] == null ? null : ((map['publicPoints']! as List).cast<String>()).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}


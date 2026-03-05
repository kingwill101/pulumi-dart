// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_cassandra_cluster_cluster_args_doc}
class ClusterArgs {
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
  final pulumi.Input<String> instanceType;
  /// Set the instance's IP whitelist in VPC network.
  final pulumi.Input<String>? ipWhite;
  /// The end time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the operation and maintenance time period of the cluster, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainStartTime;
  /// Cassandra major version. Now only support version `3.11`.
  final pulumi.Input<String> majorVersion;
  /// The node count of Cassandra dataCenter-1 default to 2.
  final pulumi.Input<int> nodeCount;
  final pulumi.Input<String>? password;
  /// The pay type of Cassandra dataCenter-1. Valid values are `Subscription`, `PayAsYouGo`,System default to `PayAsYouGo`.
  final pulumi.Input<String> payType;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? periodUnit;
  /// A list of security group ids to associate with.
  ///
  /// &gt; **NOTE:** Now cluster_name,data_center_name,instance_type,node_count,disk_type,disk_size,maintain_start_time,maintain_end_time,tags,ip_white,security_groups can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  final pulumi.Input<List<String>>? securityGroups;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vswitch_id of dataCenter-1, can not empty.
  final pulumi.Input<String> vswitchId;
  /// The Zone to launch the Cassandra cluster. If vswitch_id is not empty, this zone_id can be "" or consistent.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterArgs].
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
  /// [securityGroups] A list of security group ids to associate with.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The vswitch_id of dataCenter-1, can not empty.
  /// [zoneId] The Zone to launch the Cassandra cluster. If vswitch_id is not empty, this zone_id can be "" or consistent.
  ClusterArgs({
    this.autoRenew,
    this.autoRenewPeriod,
    this.clusterName,
    this.dataCenterName,
    this.diskSize,
    this.diskType,
    this.enablePublic,
    required this.instanceType,
    this.ipWhite,
    this.maintainEndTime,
    this.maintainStartTime,
    required this.majorVersion,
    required this.nodeCount,
    this.password,
    required this.payType,
    this.period,
    this.periodUnit,
    this.securityGroups,
    this.tags,
    required this.vswitchId,
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
      'instanceType': instanceType,
      'ipWhite': ?ipWhite,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'majorVersion': majorVersion,
      'nodeCount': nodeCount,
      'password': ?password,
      'payType': payType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'securityGroups': ?securityGroups,
      'tags': ?tags,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCenterName: (() { final guardedValue = map['dataCenterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePublic: (() { final guardedValue = map['enablePublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipWhite: (() { final guardedValue = map['ipWhite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainEndTime: (() { final guardedValue = map['maintainEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainStartTime: (() { final guardedValue = map['maintainStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      majorVersion: pulumi.Input.fromValue(map['majorVersion'] as String),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: pulumi.Input.fromValue(map['payType'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


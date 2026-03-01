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
  /// > **NOTE:** Now cluster_name,data_center_name,instance_type,node_count,disk_type,disk_size,maintain_start_time,maintain_end_time,tags,ip_white,security_groups can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
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
    bool? autoRenew,
    int? autoRenewPeriod,
    String? clusterName,
    String? dataCenterName,
    int? diskSize,
    String? diskType,
    bool? enablePublic,
    required String instanceType,
    String? ipWhite,
    String? maintainEndTime,
    String? maintainStartTime,
    required String majorVersion,
    required int nodeCount,
    String? password,
    required String payType,
    int? period,
    String? periodUnit,
    List<String>? securityGroups,
    Map<String, String>? tags,
    required String vswitchId,
    String? zoneId,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      dataCenterName = pulumi.Input.asOptionalInput<String>(dataCenterName),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      enablePublic = pulumi.Input.asOptionalInput<bool>(enablePublic),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      ipWhite = pulumi.Input.asOptionalInput<String>(ipWhite),
      maintainEndTime = pulumi.Input.asOptionalInput<String>(maintainEndTime),
      maintainStartTime = pulumi.Input.asOptionalInput<String>(maintainStartTime),
      majorVersion = pulumi.Input.asInput<String>(majorVersion),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      password = pulumi.Input.asOptionalInput<String>(password),
      payType = pulumi.Input.asInput<String>(payType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      dataCenterName: map['dataCenterName'] == null ? null : map['dataCenterName'] as String,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      enablePublic: map['enablePublic'] == null ? null : map['enablePublic'] as bool,
      instanceType: map['instanceType'] as String,
      ipWhite: map['ipWhite'] == null ? null : map['ipWhite'] as String,
      maintainEndTime: map['maintainEndTime'] == null ? null : map['maintainEndTime'] as String,
      maintainStartTime: map['maintainStartTime'] == null ? null : map['maintainStartTime'] as String,
      majorVersion: map['majorVersion'] as String,
      nodeCount: map['nodeCount'] as int,
      password: map['password'] == null ? null : map['password'] as String,
      payType: map['payType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


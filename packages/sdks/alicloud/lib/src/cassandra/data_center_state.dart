// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataCenter resources.
class DataCenterState {
  /// Auto renew of dataCenter-2,`true` or `false`. System default to `false`, valid when pay_type = Subscription.
  final pulumi.Input<bool>? autoRenew;
  /// Period of dataCenter-2 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  final pulumi.Input<int>? autoRenewPeriod;
  /// Cassandra cluster id of dataCenter-2 belongs to.
  final pulumi.Input<String>? clusterId;
  final pulumi.Input<String>? dataCenterId;
  /// Cassandra dataCenter-2 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  final pulumi.Input<String>? dataCenterName;
  /// User-defined Cassandra dataCenter one core node's storage space.Unit: GB. Value range:
  /// - Custom storage space; value range: [160, 2000].
  /// - 80-GB increments.
  final pulumi.Input<int>? diskSize;
  /// The disk type of Cassandra dataCenter-2. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  final pulumi.Input<String>? diskType;
  final pulumi.Input<bool>? enablePublic;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  final pulumi.Input<String>? instanceType;
  /// The node count of Cassandra dataCenter-2, default to 2.
  final pulumi.Input<int>? nodeCount;
  /// The pay type of Cassandra dataCenter-2. Valid values are `Subscription`, `PayAsYouGo`. System default to `PayAsYouGo`.
  final pulumi.Input<String>? payType;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? periodUnit;
  final pulumi.Input<List<String>>? publicPoints;
  final pulumi.Input<String>? status;
  /// The vswitch_id of dataCenter-2, mast different of vswitch_id(dc-1), can not empty.
  ///
  /// > **NOTE:** Now data_center_name,instance_type,node_count,disk_type,disk_size can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the Cassandra dataCenter-2. If vswitch_id is not empty, this zone_id can be "" or consistent.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DataCenterState].
  /// [autoRenew] Auto renew of dataCenter-2,`true` or `false`. System default to `false`, valid when pay_type = Subscription.
  /// [autoRenewPeriod] Period of dataCenter-2 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  /// [clusterId] Cassandra cluster id of dataCenter-2 belongs to.
  /// [dataCenterId] Optional.
  /// [dataCenterName] Cassandra dataCenter-2 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  /// [diskSize] User-defined Cassandra dataCenter one core node's storage space.Unit: GB. Value range:
  /// [diskType] The disk type of Cassandra dataCenter-2. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  /// [enablePublic] Optional.
  /// [instanceType] Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  /// [nodeCount] The node count of Cassandra dataCenter-2, default to 2.
  /// [payType] The pay type of Cassandra dataCenter-2. Valid values are `Subscription`, `PayAsYouGo`. System default to `PayAsYouGo`.
  /// [period] Optional.
  /// [periodUnit] Optional.
  /// [publicPoints] Optional.
  /// [status] Optional.
  /// [vswitchId] The vswitch_id of dataCenter-2, mast different of vswitch_id(dc-1), can not empty.
  /// [zoneId] The Zone to launch the Cassandra dataCenter-2. If vswitch_id is not empty, this zone_id can be "" or consistent.
  DataCenterState({
    this.autoRenew,
    this.autoRenewPeriod,
    this.clusterId,
    this.dataCenterId,
    this.dataCenterName,
    this.diskSize,
    this.diskType,
    this.enablePublic,
    this.instanceType,
    this.nodeCount,
    this.payType,
    this.period,
    this.periodUnit,
    this.publicPoints,
    this.status,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'clusterId': ?clusterId,
      'dataCenterId': ?dataCenterId,
      'dataCenterName': ?dataCenterName,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'enablePublic': ?enablePublic,
      'instanceType': ?instanceType,
      'nodeCount': ?nodeCount,
      'payType': ?payType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'publicPoints': ?publicPoints,
      'status': ?status,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DataCenterState.fromMap(Map<String, dynamic> map) {
    return DataCenterState(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      dataCenterId: map['dataCenterId'] == null ? null : (map['dataCenterId'] as String).input(),
      dataCenterName: map['dataCenterName'] == null ? null : (map['dataCenterName'] as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      enablePublic: map['enablePublic'] == null ? null : (map['enablePublic'] as bool).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      payType: map['payType'] == null ? null : (map['payType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      publicPoints: map['publicPoints'] == null ? null : ((map['publicPoints'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}


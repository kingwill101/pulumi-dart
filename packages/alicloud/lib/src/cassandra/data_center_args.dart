// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_data_center_data_center_args_doc}
/// The set of arguments for DataCenter.
/// {@endtemplate}
/// {@macro pulumi_cassandra_data_center_data_center_args_doc}
class DataCenterArgs {
  /// Auto renew of dataCenter-2,`true` or `false`. System default to `false`, valid when pay_type = Subscription.
  final pulumi.Input<bool>? autoRenew;
  /// Period of dataCenter-2 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  final pulumi.Input<int>? autoRenewPeriod;
  /// Cassandra cluster id of dataCenter-2 belongs to.
  final pulumi.Input<String> clusterId;
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
  final pulumi.Input<String> instanceType;
  /// The node count of Cassandra dataCenter-2, default to 2.
  final pulumi.Input<int> nodeCount;
  /// The pay type of Cassandra dataCenter-2. Valid values are `Subscription`, `PayAsYouGo`. System default to `PayAsYouGo`.
  final pulumi.Input<String> payType;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? periodUnit;
  /// The vswitch_id of dataCenter-2, mast different of vswitch_id(dc-1), can not empty.
  ///
  /// > **NOTE:** Now data_center_name,instance_type,node_count,disk_type,disk_size can be change. The others(auto_renew, auto_renew_period and so on) will be supported in the furture.
  final pulumi.Input<String> vswitchId;
  /// The Zone to launch the Cassandra dataCenter-2. If vswitch_id is not empty, this zone_id can be "" or consistent.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DataCenterArgs].
  /// [autoRenew] Auto renew of dataCenter-2,`true` or `false`. System default to `false`, valid when pay_type = Subscription.
  /// [autoRenewPeriod] Period of dataCenter-2 auto renew, if auto renew is `true`, one of `1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 60`, valid when pay_type = Subscription. Unit: month.
  /// [clusterId] Cassandra cluster id of dataCenter-2 belongs to.
  /// [dataCenterName] Cassandra dataCenter-2 name. Length must be 2~128 characters long. Only Chinese characters, English letters, numbers, period `.`, underline `_`, or dash `-` are permitted.
  /// [diskSize] User-defined Cassandra dataCenter one core node's storage space.Unit: GB. Value range:
  /// [diskType] The disk type of Cassandra dataCenter-2. Valid values are `cloud_ssd`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`, local_disk size is fixed.
  /// [enablePublic] Optional.
  /// [instanceType] Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/157445.html). Or you can call describeInstanceType api.
  /// [nodeCount] The node count of Cassandra dataCenter-2, default to 2.
  /// [payType] The pay type of Cassandra dataCenter-2. Valid values are `Subscription`, `PayAsYouGo`. System default to `PayAsYouGo`.
  /// [period] Optional.
  /// [periodUnit] Optional.
  /// [vswitchId] The vswitch_id of dataCenter-2, mast different of vswitch_id(dc-1), can not empty.
  /// [zoneId] The Zone to launch the Cassandra dataCenter-2. If vswitch_id is not empty, this zone_id can be "" or consistent.
  DataCenterArgs({
    bool? autoRenew,
    int? autoRenewPeriod,
    required String clusterId,
    String? dataCenterName,
    int? diskSize,
    String? diskType,
    bool? enablePublic,
    required String instanceType,
    required int nodeCount,
    required String payType,
    int? period,
    String? periodUnit,
    required String vswitchId,
    String? zoneId,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      dataCenterName = pulumi.Input.asOptionalInput<String>(dataCenterName),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      enablePublic = pulumi.Input.asOptionalInput<bool>(enablePublic),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      payType = pulumi.Input.asInput<String>(payType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'clusterId': clusterId,
      'dataCenterName': ?dataCenterName,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'enablePublic': ?enablePublic,
      'instanceType': instanceType,
      'nodeCount': nodeCount,
      'payType': payType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DataCenterArgs.fromMap(Map<String, dynamic> map) {
    return DataCenterArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      clusterId: map['clusterId'] as String,
      dataCenterName: map['dataCenterName'] == null ? null : map['dataCenterName'] as String,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      enablePublic: map['enablePublic'] == null ? null : map['enablePublic'] as bool,
      instanceType: map['instanceType'] as String,
      nodeCount: map['nodeCount'] as int,
      payType: map['payType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


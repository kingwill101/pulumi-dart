// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoSnapShotPolicy resources.
class AutoSnapShotPolicyState {
  /// The number of database file systems set by the automatic snapshot policy.
  final pulumi.Input<int>? appliedDbfsNumber;

  /// The creation time of the resource
  final pulumi.Input<String>? createTime;

  /// Last modification time of automatic snapshot policy
  final pulumi.Input<String>? lastModified;

  /// Automatic snapshot policy ID
  final pulumi.Input<String>? policyId;

  /// Automatic snapshot policy name
  final pulumi.Input<String>? policyName;

  /// A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  final pulumi.Input<List<String>>? repeatWeekdays;

  /// Automatic snapshot retention days.
  final pulumi.Input<int>? retentionDays;

  /// Automatic snapshot policy status
  final pulumi.Input<String>? status;

  /// Automatic snapshot policy status details
  final pulumi.Input<String>? statusDetail;

  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  final pulumi.Input<List<String>>? timePoints;

  /// Creates a new [AutoSnapShotPolicyState].
  /// [appliedDbfsNumber] The number of database file systems set by the automatic snapshot policy.
  /// [createTime] The creation time of the resource
  /// [lastModified] Last modification time of automatic snapshot policy
  /// [policyId] Automatic snapshot policy ID
  /// [policyName] Automatic snapshot policy name
  /// [repeatWeekdays] A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  /// [retentionDays] Automatic snapshot retention days.
  /// [status] Automatic snapshot policy status
  /// [statusDetail] Automatic snapshot policy status details
  /// [timePoints] The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  AutoSnapShotPolicyState({
    this.appliedDbfsNumber,
    this.createTime,
    this.lastModified,
    this.policyId,
    this.policyName,
    this.repeatWeekdays,
    this.retentionDays,
    this.status,
    this.statusDetail,
    this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedDbfsNumber': ?appliedDbfsNumber,
      'createTime': ?createTime,
      'lastModified': ?lastModified,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'repeatWeekdays': ?repeatWeekdays,
      'retentionDays': ?retentionDays,
      'status': ?status,
      'statusDetail': ?statusDetail,
      'timePoints': ?timePoints,
    };
  }

  factory AutoSnapShotPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoSnapShotPolicyState(
      appliedDbfsNumber: (() {
        final guardedValue = map['appliedDbfsNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModified: (() {
        final guardedValue = map['lastModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatWeekdays: (() {
        final guardedValue = map['repeatWeekdays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      retentionDays: (() {
        final guardedValue = map['retentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusDetail: (() {
        final guardedValue = map['statusDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timePoints: (() {
        final guardedValue = map['timePoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

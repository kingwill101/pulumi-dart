// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutoSnapshotPoliciesPolicy {
  /// The ID of the automatic snapshot policy.
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// The name of the automatic snapshot policy.
  final pulumi.Input<String> autoSnapshotPolicyName;
  /// The time when the automatic snapshot policy was created.
  final pulumi.Input<String> createTime;
  /// The number of file systems to which the automatic snapshot policy applies.
  final pulumi.Input<int> fileSystemNums;
  /// ID of the Auto Snapshot Policy.
  final pulumi.Input<String> id;
  /// The day on which an auto snapshot was created.
  final pulumi.Input<List<String>> repeatWeekdays;
  /// The number of days for which you want to retain auto snapshots.
  final pulumi.Input<int> retentionDays;
  /// The status of the automatic snapshot policy. Valid values: `Creating`, `Available`.
  final pulumi.Input<String> status;
  /// The point in time at which an auto snapshot was created. Unit: hours.
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [GetAutoSnapshotPoliciesPolicy].
  /// [autoSnapshotPolicyId] The ID of the automatic snapshot policy.
  /// [autoSnapshotPolicyName] The name of the automatic snapshot policy.
  /// [createTime] The time when the automatic snapshot policy was created.
  /// [fileSystemNums] The number of file systems to which the automatic snapshot policy applies.
  /// [id] ID of the Auto Snapshot Policy.
  /// [repeatWeekdays] The day on which an auto snapshot was created.
  /// [retentionDays] The number of days for which you want to retain auto snapshots.
  /// [status] The status of the automatic snapshot policy. Valid values: `Creating`, `Available`.
  /// [timePoints] The point in time at which an auto snapshot was created. Unit: hours.
  GetAutoSnapshotPoliciesPolicy({
    required this.autoSnapshotPolicyId,
    required this.autoSnapshotPolicyName,
    required this.createTime,
    required this.fileSystemNums,
    required this.id,
    required this.repeatWeekdays,
    required this.retentionDays,
    required this.status,
    required this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'autoSnapshotPolicyName': autoSnapshotPolicyName,
      'createTime': createTime,
      'fileSystemNums': fileSystemNums,
      'id': id,
      'repeatWeekdays': repeatWeekdays,
      'retentionDays': retentionDays,
      'status': status,
      'timePoints': timePoints,
    };
  }

  factory GetAutoSnapshotPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesPolicy(
      autoSnapshotPolicyId: pulumi.Input.fromValue(map['autoSnapshotPolicyId'] as String),
      autoSnapshotPolicyName: pulumi.Input.fromValue(map['autoSnapshotPolicyName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      fileSystemNums: pulumi.Input.fromValue(map['fileSystemNums'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      repeatWeekdays: pulumi.Input.fromValue((map['repeatWeekdays'] as List).cast<String>()),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      timePoints: pulumi.Input.fromValue((map['timePoints'] as List).cast<String>()),
    );
  }
}


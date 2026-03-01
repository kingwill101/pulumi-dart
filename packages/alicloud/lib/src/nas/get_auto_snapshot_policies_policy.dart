// ignore_for_file: unused_element, unnecessary_cast


class GetAutoSnapshotPoliciesPolicy {
  /// The ID of the automatic snapshot policy.
  final String autoSnapshotPolicyId;
  /// The name of the automatic snapshot policy.
  final String autoSnapshotPolicyName;
  /// The time when the automatic snapshot policy was created.
  final String createTime;
  /// The number of file systems to which the automatic snapshot policy applies.
  final int fileSystemNums;
  /// ID of the Auto Snapshot Policy.
  final String id;
  /// The day on which an auto snapshot was created.
  final List<String> repeatWeekdays;
  /// The number of days for which you want to retain auto snapshots.
  final int retentionDays;
  /// The status of the automatic snapshot policy. Valid values: `Creating`, `Available`.
  final String status;
  /// The point in time at which an auto snapshot was created. Unit: hours.
  final List<String> timePoints;

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
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] as String,
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] as String,
      createTime: map['createTime'] as String,
      fileSystemNums: map['fileSystemNums'] as int,
      id: map['id'] as String,
      repeatWeekdays: (map['repeatWeekdays'] as List).cast<String>(),
      retentionDays: map['retentionDays'] as int,
      status: map['status'] as String,
      timePoints: (map['timePoints'] as List).cast<String>(),
    );
  }
}


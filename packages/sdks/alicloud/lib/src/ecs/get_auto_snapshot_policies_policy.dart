// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutoSnapshotPoliciesPolicy {
  /// The ID of the Auto Snapshot Policy.
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// The retention period of the snapshot copied across regions.
  final pulumi.Input<int> copiedSnapshotsRetentionDays;
  /// The number of disks to which the automatic snapshot policy is applied.
  final pulumi.Input<int> diskNums;
  /// Specifies whether to enable the system to automatically copy snapshots across regions.
  final pulumi.Input<bool> enableCrossRegionCopy;
  /// The ID of the Auto Snapshot Policy.
  final pulumi.Input<String> id;
  /// The snapshot policy name..
  final pulumi.Input<String> name;
  /// The automatic snapshot repetition dates.
  final pulumi.Input<List<String>> repeatWeekdays;
  /// The snapshot retention time, and the unit of measurement is day.
  final pulumi.Input<int> retentionDays;
  /// The status of Auto Snapshot Policy.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The destination region to which the snapshot is copied.
  final pulumi.Input<List<String>> targetCopyRegions;
  /// The automatic snapshot creation schedule, and the unit of measurement is hour.
  final pulumi.Input<List<String>> timePoints;
  /// The number of extended volumes on which this policy is enabled.
  final pulumi.Input<int> volumeNums;

  /// Creates a new [GetAutoSnapshotPoliciesPolicy].
  /// [autoSnapshotPolicyId] The ID of the Auto Snapshot Policy.
  /// [copiedSnapshotsRetentionDays] The retention period of the snapshot copied across regions.
  /// [diskNums] The number of disks to which the automatic snapshot policy is applied.
  /// [enableCrossRegionCopy] Specifies whether to enable the system to automatically copy snapshots across regions.
  /// [id] The ID of the Auto Snapshot Policy.
  /// [name] The snapshot policy name..
  /// [repeatWeekdays] The automatic snapshot repetition dates.
  /// [retentionDays] The snapshot retention time, and the unit of measurement is day.
  /// [status] The status of Auto Snapshot Policy.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetCopyRegions] The destination region to which the snapshot is copied.
  /// [timePoints] The automatic snapshot creation schedule, and the unit of measurement is hour.
  /// [volumeNums] The number of extended volumes on which this policy is enabled.
  GetAutoSnapshotPoliciesPolicy({
    required this.autoSnapshotPolicyId,
    required this.copiedSnapshotsRetentionDays,
    required this.diskNums,
    required this.enableCrossRegionCopy,
    required this.id,
    required this.name,
    required this.repeatWeekdays,
    required this.retentionDays,
    required this.status,
    required this.tags,
    required this.targetCopyRegions,
    required this.timePoints,
    required this.volumeNums,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'copiedSnapshotsRetentionDays': copiedSnapshotsRetentionDays,
      'diskNums': diskNums,
      'enableCrossRegionCopy': enableCrossRegionCopy,
      'id': id,
      'name': name,
      'repeatWeekdays': repeatWeekdays,
      'retentionDays': retentionDays,
      'status': status,
      'tags': tags,
      'targetCopyRegions': targetCopyRegions,
      'timePoints': timePoints,
      'volumeNums': volumeNums,
    };
  }

  factory GetAutoSnapshotPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesPolicy(
      autoSnapshotPolicyId: pulumi.Input.fromValue(map['autoSnapshotPolicyId'] as String),
      copiedSnapshotsRetentionDays: pulumi.Input.fromValue(map['copiedSnapshotsRetentionDays'] as int),
      diskNums: pulumi.Input.fromValue(map['diskNums'] as int),
      enableCrossRegionCopy: pulumi.Input.fromValue(map['enableCrossRegionCopy'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      repeatWeekdays: pulumi.Input.fromValue((map['repeatWeekdays'] as List).cast<String>()),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      targetCopyRegions: pulumi.Input.fromValue((map['targetCopyRegions'] as List).cast<String>()),
      timePoints: pulumi.Input.fromValue((map['timePoints'] as List).cast<String>()),
      volumeNums: pulumi.Input.fromValue(map['volumeNums'] as int),
    );
  }
}


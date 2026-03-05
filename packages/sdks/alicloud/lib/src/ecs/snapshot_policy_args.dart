// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_copy_encryption_configuration.dart';

/// {@template pulumi_ecs_snapshot_policy_snapshot_policy_args_doc}
/// The set of arguments for SnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_ecs_snapshot_policy_snapshot_policy_args_doc}
class SnapshotPolicyArgs {
  final pulumi.Input<String>? autoSnapshotPolicyName;
  final pulumi.Input<int>? copiedSnapshotsRetentionDays;
  final pulumi.Input<SnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration;
  final pulumi.Input<bool>? enableCrossRegionCopy;
  /// The snapshot policy name.
  final pulumi.Input<String>? name;
  /// The automatic snapshot repetition dates. The unit of measurement is day and the repeating cycle is a week. Value range: [1, 7], which represents days starting from Monday to Sunday, for example 1  indicates Monday. When you want to schedule multiple automatic snapshot tasks for a disk in a week, you can set the RepeatWeekdays to an array.
  /// - A maximum of seven time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  final pulumi.Input<List<String>> repeatWeekdays;
  final pulumi.Input<String>? resourceGroupId;
  /// The snapshot retention time, and the unit of measurement is day. Optional values:
  /// - -1: The automatic snapshots are retained permanently.
  /// - [1, 65536]: The number of days retained.
  ///
  /// Default value: -1.
  final pulumi.Input<int> retentionDays;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<String>>? targetCopyRegions;
  /// The automatic snapshot creation schedule, and the unit of measurement is hour. Value range: [0, 23], which represents from 00:00 to 24:00,  for example 1 indicates 01:00. When you want to schedule multiple automatic snapshot tasks for a disk in a day, you can set the TimePoints to an array.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [SnapshotPolicyArgs].
  /// [autoSnapshotPolicyName] Optional.
  /// [copiedSnapshotsRetentionDays] Optional.
  /// [copyEncryptionConfiguration] Optional.
  /// [enableCrossRegionCopy] Optional.
  /// [name] The snapshot policy name.
  /// [repeatWeekdays] The automatic snapshot repetition dates. The unit of measurement is day and the repeating cycle is a week. Value range: [1, 7], which represents days starting from Monday to Sunday, for example 1  indicates Monday. When you want to schedule multiple automatic snapshot tasks for a disk in a week, you can set the RepeatWeekdays to an array.
  /// [resourceGroupId] Optional.
  /// [retentionDays] The snapshot retention time, and the unit of measurement is day. Optional values:
  /// [tags] Optional.
  /// [targetCopyRegions] Optional.
  /// [timePoints] The automatic snapshot creation schedule, and the unit of measurement is hour. Value range: [0, 23], which represents from 00:00 to 24:00,  for example 1 indicates 01:00. When you want to schedule multiple automatic snapshot tasks for a disk in a day, you can set the TimePoints to an array.
  SnapshotPolicyArgs({
    this.autoSnapshotPolicyName,
    this.copiedSnapshotsRetentionDays,
    this.copyEncryptionConfiguration,
    this.enableCrossRegionCopy,
    this.name,
    required this.repeatWeekdays,
    this.resourceGroupId,
    required this.retentionDays,
    this.tags,
    this.targetCopyRegions,
    required this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyName': ?autoSnapshotPolicyName,
      'copiedSnapshotsRetentionDays': ?copiedSnapshotsRetentionDays,
      'copyEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyCopyEncryptionConfiguration, Map<String, dynamic>>(copyEncryptionConfiguration, (value) => value.toMap()),
      'enableCrossRegionCopy': ?enableCrossRegionCopy,
      'name': ?name,
      'repeatWeekdays': repeatWeekdays,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': retentionDays,
      'tags': ?tags,
      'targetCopyRegions': ?targetCopyRegions,
      'timePoints': timePoints,
    };
  }

  factory SnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyArgs(
      autoSnapshotPolicyName: (() { final guardedValue = map['autoSnapshotPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copiedSnapshotsRetentionDays: (() { final guardedValue = map['copiedSnapshotsRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      copyEncryptionConfiguration: (() { final guardedValue = map['copyEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotPolicyCopyEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableCrossRegionCopy: (() { final guardedValue = map['enableCrossRegionCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatWeekdays: pulumi.Input.fromValue((map['repeatWeekdays'] as List).cast<String>()),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetCopyRegions: (() { final guardedValue = map['targetCopyRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timePoints: pulumi.Input.fromValue((map['timePoints'] as List).cast<String>()),
    );
  }
}


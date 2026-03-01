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
    String? autoSnapshotPolicyName,
    int? copiedSnapshotsRetentionDays,
    SnapshotPolicyCopyEncryptionConfiguration? copyEncryptionConfiguration,
    bool? enableCrossRegionCopy,
    String? name,
    required List<String> repeatWeekdays,
    String? resourceGroupId,
    required int retentionDays,
    Map<String, String>? tags,
    List<String>? targetCopyRegions,
    required List<String> timePoints,
  }) :
      autoSnapshotPolicyName = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyName),
      copiedSnapshotsRetentionDays = pulumi.Input.asOptionalInput<int>(copiedSnapshotsRetentionDays),
      copyEncryptionConfiguration = pulumi.Input.asOptionalInput<SnapshotPolicyCopyEncryptionConfiguration>(copyEncryptionConfiguration),
      enableCrossRegionCopy = pulumi.Input.asOptionalInput<bool>(enableCrossRegionCopy),
      name = pulumi.Input.asOptionalInput<String>(name),
      repeatWeekdays = pulumi.Input.asInput<List<String>>(repeatWeekdays),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asInput<int>(retentionDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetCopyRegions = pulumi.Input.asOptionalInput<List<String>>(targetCopyRegions),
      timePoints = pulumi.Input.asInput<List<String>>(timePoints);

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
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : map['autoSnapshotPolicyName'] as String,
      copiedSnapshotsRetentionDays: map['copiedSnapshotsRetentionDays'] == null ? null : map['copiedSnapshotsRetentionDays'] as int,
      copyEncryptionConfiguration: map['copyEncryptionConfiguration'] == null ? null : SnapshotPolicyCopyEncryptionConfiguration.fromMap((map['copyEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      enableCrossRegionCopy: map['enableCrossRegionCopy'] == null ? null : map['enableCrossRegionCopy'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      repeatWeekdays: (map['repeatWeekdays'] as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      retentionDays: map['retentionDays'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetCopyRegions: map['targetCopyRegions'] == null ? null : (map['targetCopyRegions'] as List).cast<String>(),
      timePoints: (map['timePoints'] as List).cast<String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_copy_encryption_configuration.dart';

/// Input properties used for looking up and filtering SnapshotPolicy resources.
class SnapshotPolicyState {
  final pulumi.Input<String>? autoSnapshotPolicyName;
  final pulumi.Input<int>? copiedSnapshotsRetentionDays;
  final pulumi.Input<SnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration;
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? enableCrossRegionCopy;
  /// The snapshot policy name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? regionId;
  /// The automatic snapshot repetition dates. The unit of measurement is day and the repeating cycle is a week. Value range: [1, 7], which represents days starting from Monday to Sunday, for example 1  indicates Monday. When you want to schedule multiple automatic snapshot tasks for a disk in a week, you can set the RepeatWeekdays to an array.
  /// - A maximum of seven time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  final pulumi.Input<List<String>>? repeatWeekdays;
  final pulumi.Input<String>? resourceGroupId;
  /// The snapshot retention time, and the unit of measurement is day. Optional values:
  /// - -1: The automatic snapshots are retained permanently.
  /// - [1, 65536]: The number of days retained.
  ///
  /// Default value: -1.
  final pulumi.Input<int>? retentionDays;
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<String>>? targetCopyRegions;
  /// The automatic snapshot creation schedule, and the unit of measurement is hour. Value range: [0, 23], which represents from 00:00 to 24:00,  for example 1 indicates 01:00. When you want to schedule multiple automatic snapshot tasks for a disk in a day, you can set the TimePoints to an array.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  final pulumi.Input<List<String>>? timePoints;

  /// Creates a new [SnapshotPolicyState].
  /// [autoSnapshotPolicyName] Optional.
  /// [copiedSnapshotsRetentionDays] Optional.
  /// [copyEncryptionConfiguration] Optional.
  /// [createTime] Optional.
  /// [enableCrossRegionCopy] Optional.
  /// [name] The snapshot policy name.
  /// [regionId] Optional.
  /// [repeatWeekdays] The automatic snapshot repetition dates. The unit of measurement is day and the repeating cycle is a week. Value range: [1, 7], which represents days starting from Monday to Sunday, for example 1  indicates Monday. When you want to schedule multiple automatic snapshot tasks for a disk in a week, you can set the RepeatWeekdays to an array.
  /// [resourceGroupId] Optional.
  /// [retentionDays] The snapshot retention time, and the unit of measurement is day. Optional values:
  /// [status] Optional.
  /// [tags] Optional.
  /// [targetCopyRegions] Optional.
  /// [timePoints] The automatic snapshot creation schedule, and the unit of measurement is hour. Value range: [0, 23], which represents from 00:00 to 24:00,  for example 1 indicates 01:00. When you want to schedule multiple automatic snapshot tasks for a disk in a day, you can set the TimePoints to an array.
  SnapshotPolicyState({
    pulumi.Output<String>? autoSnapshotPolicyName,
    pulumi.Output<int>? copiedSnapshotsRetentionDays,
    pulumi.Output<SnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? enableCrossRegionCopy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? regionId,
    pulumi.Output<List<String>>? repeatWeekdays,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? targetCopyRegions,
    pulumi.Output<List<String>>? timePoints,
  }) :
      autoSnapshotPolicyName = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyName),
      copiedSnapshotsRetentionDays = pulumi.Input.asOptionalInput<int>(copiedSnapshotsRetentionDays),
      copyEncryptionConfiguration = pulumi.Input.asOptionalInput<SnapshotPolicyCopyEncryptionConfiguration>(copyEncryptionConfiguration),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      enableCrossRegionCopy = pulumi.Input.asOptionalInput<bool>(enableCrossRegionCopy),
      name = pulumi.Input.asOptionalInput<String>(name),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      repeatWeekdays = pulumi.Input.asOptionalInput<List<String>>(repeatWeekdays),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetCopyRegions = pulumi.Input.asOptionalInput<List<String>>(targetCopyRegions),
      timePoints = pulumi.Input.asOptionalInput<List<String>>(timePoints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyName': ?autoSnapshotPolicyName,
      'copiedSnapshotsRetentionDays': ?copiedSnapshotsRetentionDays,
      'copyEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyCopyEncryptionConfiguration, Map<String, dynamic>>(copyEncryptionConfiguration, (value) => value.toMap()),
      'createTime': ?createTime,
      'enableCrossRegionCopy': ?enableCrossRegionCopy,
      'name': ?name,
      'regionId': ?regionId,
      'repeatWeekdays': ?repeatWeekdays,
      'resourceGroupId': ?resourceGroupId,
      'retentionDays': ?retentionDays,
      'status': ?status,
      'tags': ?tags,
      'targetCopyRegions': ?targetCopyRegions,
      'timePoints': ?timePoints,
    };
  }

  factory SnapshotPolicyState.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyState(
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : pulumi.Output.create<String>(map['autoSnapshotPolicyName'] as String),
      copiedSnapshotsRetentionDays: map['copiedSnapshotsRetentionDays'] == null ? null : pulumi.Output.create<int>(map['copiedSnapshotsRetentionDays'] as int),
      copyEncryptionConfiguration: map['copyEncryptionConfiguration'] == null ? null : pulumi.Output.create<SnapshotPolicyCopyEncryptionConfiguration>(SnapshotPolicyCopyEncryptionConfiguration.fromMap((map['copyEncryptionConfiguration'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      enableCrossRegionCopy: map['enableCrossRegionCopy'] == null ? null : pulumi.Output.create<bool>(map['enableCrossRegionCopy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      repeatWeekdays: map['repeatWeekdays'] == null ? null : pulumi.Output.create<List<String>>((map['repeatWeekdays'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetCopyRegions: map['targetCopyRegions'] == null ? null : pulumi.Output.create<List<String>>((map['targetCopyRegions'] as List).cast<String>()),
      timePoints: map['timePoints'] == null ? null : pulumi.Output.create<List<String>>((map['timePoints'] as List).cast<String>()),
    );
  }
}


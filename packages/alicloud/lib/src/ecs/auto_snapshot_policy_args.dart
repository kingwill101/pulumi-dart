// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_policy_copy_encryption_configuration.dart';

/// {@template pulumi_ecs_auto_snapshot_policy_auto_snapshot_policy_args_doc}
/// The set of arguments for AutoSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_ecs_auto_snapshot_policy_auto_snapshot_policy_args_doc}
class AutoSnapshotPolicyArgs {
  /// The name of the automatic snapshot policy. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? autoSnapshotPolicyName;
  /// The retention period of the snapshot copy in the destination region. Unit: days. Valid values:
  /// - `-1`: The snapshot copy is retained until it is deleted.
  final pulumi.Input<int>? copiedSnapshotsRetentionDays;
  /// The encryption parameters for cross-region snapshot replication. See `copy_encryption_configuration` below.
  final pulumi.Input<AutoSnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration;
  /// Specifies whether to enable cross-region replication for snapshots. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableCrossRegionCopy;
  /// . Field `name` has been deprecated from provider version 1.236.0. New field `auto_snapshot_policy_name` instead.
  final pulumi.Input<String>? name;
  /// The days of the week on which to create automatic snapshots. Valid values: `1` to `7`, which correspond to the days of the week. For example, `1` indicates Monday. One or more days can be specified.
  final pulumi.Input<List<String>> repeatWeekdays;
  /// The ID of the resource group. If this parameter is specified to query resources, up to 1,000 resources that belong to the specified resource group can be displayed in the response.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention period of the automatic snapshots. Unit: days. Valid values:
  /// - `-1`: Automatic snapshots are retained until they are deleted.
  final pulumi.Input<int> retentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The destination region to which to copy the snapshot. You can specify only a single destination region.
  final pulumi.Input<List<String>>? targetCopyRegions;
  /// The points in time of the day at which to create automatic snapshots.
  ///
  /// The time is displayed in UTC+8. Unit: hours. Valid values: `0` to `23`, which correspond to the 24 points in time on the hour from 00:00:00 to 23:00:00. For example, 1 indicates 01:00:00. Multiple points in time can be specified.
  ///
  /// The parameter value is a JSON array that contains up to 24 points in time separated by commas (,). Example: ["0", "1", ... "23"].
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [AutoSnapshotPolicyArgs].
  /// [autoSnapshotPolicyName] The name of the automatic snapshot policy. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [copiedSnapshotsRetentionDays] The retention period of the snapshot copy in the destination region. Unit: days. Valid values:
  /// [copyEncryptionConfiguration] The encryption parameters for cross-region snapshot replication. See `copy_encryption_configuration` below.
  /// [enableCrossRegionCopy] Specifies whether to enable cross-region replication for snapshots. Valid values: `true`, `false`.
  /// [name] . Field `name` has been deprecated from provider version 1.236.0. New field `auto_snapshot_policy_name` instead.
  /// [repeatWeekdays] The days of the week on which to create automatic snapshots. Valid values: `1` to `7`, which correspond to the days of the week. For example, `1` indicates Monday. One or more days can be specified.
  /// [resourceGroupId] The ID of the resource group. If this parameter is specified to query resources, up to 1,000 resources that belong to the specified resource group can be displayed in the response.
  /// [retentionDays] The retention period of the automatic snapshots. Unit: days. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetCopyRegions] The destination region to which to copy the snapshot. You can specify only a single destination region.
  /// [timePoints] The points in time of the day at which to create automatic snapshots.
  AutoSnapshotPolicyArgs({
    String? autoSnapshotPolicyName,
    int? copiedSnapshotsRetentionDays,
    AutoSnapshotPolicyCopyEncryptionConfiguration? copyEncryptionConfiguration,
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
      copyEncryptionConfiguration = pulumi.Input.asOptionalInput<AutoSnapshotPolicyCopyEncryptionConfiguration>(copyEncryptionConfiguration),
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
      'copyEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<AutoSnapshotPolicyCopyEncryptionConfiguration, Map<String, dynamic>>(copyEncryptionConfiguration, (value) => value.toMap()),
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

  factory AutoSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyArgs(
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : map['autoSnapshotPolicyName'] as String,
      copiedSnapshotsRetentionDays: map['copiedSnapshotsRetentionDays'] == null ? null : map['copiedSnapshotsRetentionDays'] as int,
      copyEncryptionConfiguration: map['copyEncryptionConfiguration'] == null ? null : AutoSnapshotPolicyCopyEncryptionConfiguration.fromMap((map['copyEncryptionConfiguration'] as Map).cast<String, dynamic>()),
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


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_policy_copy_encryption_configuration.dart';

/// Input properties used for looking up and filtering AutoSnapshotPolicy resources.
class AutoSnapshotPolicyState {
  /// The name of the automatic snapshot policy. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? autoSnapshotPolicyName;
  /// The retention period of the snapshot copy in the destination region. Unit: days. Valid values:
  /// - `-1`: The snapshot copy is retained until it is deleted.
  final pulumi.Input<int>? copiedSnapshotsRetentionDays;
  /// The encryption parameters for cross-region snapshot replication. See `copy_encryption_configuration` below.
  final pulumi.Input<AutoSnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration;
  /// (Available since v1.236.0) The time when the automatic snapshot policy was created. The time follows the ISO 8601 standard in the yyyy-MM-ddThh:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable cross-region replication for snapshots. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableCrossRegionCopy;
  /// . Field `name` has been deprecated from provider version 1.236.0. New field `auto_snapshot_policy_name` instead.
  final pulumi.Input<String>? name;
  /// (Available since v1.236.0) The region ID of the automatic snapshot policy.
  final pulumi.Input<String>? regionId;
  /// The days of the week on which to create automatic snapshots. Valid values: `1` to `7`, which correspond to the days of the week. For example, `1` indicates Monday. One or more days can be specified.
  final pulumi.Input<List<String>>? repeatWeekdays;
  /// The ID of the resource group. If this parameter is specified to query resources, up to 1,000 resources that belong to the specified resource group can be displayed in the response.
  final pulumi.Input<String>? resourceGroupId;
  /// The retention period of the automatic snapshots. Unit: days. Valid values:
  /// - `-1`: Automatic snapshots are retained until they are deleted.
  final pulumi.Input<int>? retentionDays;
  /// The status of the automatic snapshot policy.
  final pulumi.Input<String>? status;
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
  final pulumi.Input<List<String>>? timePoints;

  /// Creates a new [AutoSnapshotPolicyState].
  /// [autoSnapshotPolicyName] The name of the automatic snapshot policy. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [copiedSnapshotsRetentionDays] The retention period of the snapshot copy in the destination region. Unit: days. Valid values:
  /// [copyEncryptionConfiguration] The encryption parameters for cross-region snapshot replication. See `copy_encryption_configuration` below.
  /// [createTime] (Available since v1.236.0) The time when the automatic snapshot policy was created. The time follows the ISO 8601 standard in the yyyy-MM-ddThh:mm:ssZ format. The time is displayed in UTC.
  /// [enableCrossRegionCopy] Specifies whether to enable cross-region replication for snapshots. Valid values: `true`, `false`.
  /// [name] . Field `name` has been deprecated from provider version 1.236.0. New field `auto_snapshot_policy_name` instead.
  /// [regionId] (Available since v1.236.0) The region ID of the automatic snapshot policy.
  /// [repeatWeekdays] The days of the week on which to create automatic snapshots. Valid values: `1` to `7`, which correspond to the days of the week. For example, `1` indicates Monday. One or more days can be specified.
  /// [resourceGroupId] The ID of the resource group. If this parameter is specified to query resources, up to 1,000 resources that belong to the specified resource group can be displayed in the response.
  /// [retentionDays] The retention period of the automatic snapshots. Unit: days. Valid values:
  /// [status] The status of the automatic snapshot policy.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetCopyRegions] The destination region to which to copy the snapshot. You can specify only a single destination region.
  /// [timePoints] The points in time of the day at which to create automatic snapshots.
  AutoSnapshotPolicyState({
    this.autoSnapshotPolicyName,
    this.copiedSnapshotsRetentionDays,
    this.copyEncryptionConfiguration,
    this.createTime,
    this.enableCrossRegionCopy,
    this.name,
    this.regionId,
    this.repeatWeekdays,
    this.resourceGroupId,
    this.retentionDays,
    this.status,
    this.tags,
    this.targetCopyRegions,
    this.timePoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapshotPolicyName': ?autoSnapshotPolicyName,
      'copiedSnapshotsRetentionDays': ?copiedSnapshotsRetentionDays,
      'copyEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<AutoSnapshotPolicyCopyEncryptionConfiguration, Map<String, dynamic>>(copyEncryptionConfiguration, (value) => value.toMap()),
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

  factory AutoSnapshotPolicyState.fromMap(Map<String, dynamic> map) {
    return AutoSnapshotPolicyState(
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : (map['autoSnapshotPolicyName'] as String).input(),
      copiedSnapshotsRetentionDays: map['copiedSnapshotsRetentionDays'] == null ? null : (map['copiedSnapshotsRetentionDays'] as int).input(),
      copyEncryptionConfiguration: map['copyEncryptionConfiguration'] == null ? null : (AutoSnapshotPolicyCopyEncryptionConfiguration.fromMap((map['copyEncryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      enableCrossRegionCopy: map['enableCrossRegionCopy'] == null ? null : (map['enableCrossRegionCopy'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      repeatWeekdays: map['repeatWeekdays'] == null ? null : ((map['repeatWeekdays'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetCopyRegions: map['targetCopyRegions'] == null ? null : ((map['targetCopyRegions'] as List).cast<String>()).input(),
      timePoints: map['timePoints'] == null ? null : ((map['timePoints'] as List).cast<String>()).input(),
    );
  }
}


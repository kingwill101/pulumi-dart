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
    pulumi.Output<String>? autoSnapshotPolicyName,
    pulumi.Output<int>? copiedSnapshotsRetentionDays,
    pulumi.Output<AutoSnapshotPolicyCopyEncryptionConfiguration>? copyEncryptionConfiguration,
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
      copyEncryptionConfiguration = pulumi.Input.asOptionalInput<AutoSnapshotPolicyCopyEncryptionConfiguration>(copyEncryptionConfiguration),
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
      autoSnapshotPolicyName: map['autoSnapshotPolicyName'] == null ? null : pulumi.Output.create<String>(map['autoSnapshotPolicyName'] as String),
      copiedSnapshotsRetentionDays: map['copiedSnapshotsRetentionDays'] == null ? null : pulumi.Output.create<int>(map['copiedSnapshotsRetentionDays'] as int),
      copyEncryptionConfiguration: map['copyEncryptionConfiguration'] == null ? null : pulumi.Output.create<AutoSnapshotPolicyCopyEncryptionConfiguration>(AutoSnapshotPolicyCopyEncryptionConfiguration.fromMap((map['copyEncryptionConfiguration'] as Map).cast<String, dynamic>())),
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


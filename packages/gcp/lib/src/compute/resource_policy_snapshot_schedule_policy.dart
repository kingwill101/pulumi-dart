// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy.dart';
import 'resource_policy_snapshot_schedule_policy_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties.dart';

class ResourcePolicySnapshotSchedulePolicy {
  /// Retention policy applied to snapshots created by this resource policy.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicy? retentionPolicy;
  /// Contains one of an `hourlySchedule`, `dailySchedule`, or `weeklySchedule`.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicySchedule schedule;
  /// Properties with which the snapshots are created, such as labels.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicySnapshotProperties? snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicy].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] Contains one of an `hourlySchedule`, `dailySchedule`, or `weeklySchedule`.
  /// [snapshotProperties] Properties with which the snapshots are created, such as labels.
  ResourcePolicySnapshotSchedulePolicy({
    this.retentionPolicy,
    required this.schedule,
    this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedule': schedule.toMap(),
      'snapshotProperties': ?snapshotProperties == null ? null : snapshotProperties!.toMap(),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicy(
      retentionPolicy: map['retentionPolicy'] == null ? null : ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: ResourcePolicySnapshotSchedulePolicySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties: map['snapshotProperties'] == null ? null : ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap((map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}


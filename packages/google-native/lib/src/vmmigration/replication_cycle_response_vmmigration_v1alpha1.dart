// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cycle_step_response_vmmigration_v1alpha1.dart';
import 'migration_warning_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';

/// ReplicationCycle contains information about the current replication cycle status.
class ReplicationCycleResponseVmmigrationV1alpha1 {
  /// The cycle's ordinal number.
  final int cycleNumber;

  /// The time the replication cycle has ended.
  final String endTime;

  /// Provides details on the state of the cycle in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The identifier of the ReplicationCycle.
  final String name;

  /// The current progress in percentage of this cycle.
  final int progress;

  /// The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  final int progressPercent;

  /// The time the replication cycle has started.
  final String startTime;

  /// State of the ReplicationCycle.
  final String state;

  /// The cycle's steps list representing its progress.
  final List<CycleStepResponseVmmigrationV1alpha1> steps;

  /// The accumulated duration the replication cycle was paused.
  final String totalPauseDuration;

  /// Warnings that occurred during the cycle.
  final List<MigrationWarningResponseVmmigrationV1alpha1> warnings;

  /// Creates a new [ReplicationCycleResponseVmmigrationV1alpha1].
  /// [cycleNumber] The cycle's ordinal number.
  /// [endTime] The time the replication cycle has ended.
  /// [error] Provides details on the state of the cycle in case of an error.
  /// [name] The identifier of the ReplicationCycle.
  /// [progress] The current progress in percentage of this cycle.
  /// [progressPercent] The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  /// [startTime] The time the replication cycle has started.
  /// [state] State of the ReplicationCycle.
  /// [steps] The cycle's steps list representing its progress.
  /// [totalPauseDuration] The accumulated duration the replication cycle was paused.
  /// [warnings] Warnings that occurred during the cycle.
  ReplicationCycleResponseVmmigrationV1alpha1({
    required this.cycleNumber,
    required this.endTime,
    required this.error,
    required this.name,
    required this.progress,
    required this.progressPercent,
    required this.startTime,
    required this.state,
    required this.steps,
    required this.totalPauseDuration,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cycleNumber'] = cycleNumber;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['name'] = name;
    map['progress'] = progress;
    map['progressPercent'] = progressPercent;
    map['startTime'] = startTime;
    map['state'] = state;
    map['steps'] = pulumi.Input.encodeList<CycleStepResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    map['totalPauseDuration'] = totalPauseDuration;
    map['warnings'] = pulumi.Input.encodeList<
        MigrationWarningResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(warnings, (value) => value.toMap());
    return map;
  }

  factory ReplicationCycleResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReplicationCycleResponseVmmigrationV1alpha1(
      cycleNumber: map['cycleNumber'] as int,
      endTime: map['endTime'] as String,
      error: StatusResponseVmmigrationV1alpha1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      progress: map['progress'] as int,
      progressPercent: map['progressPercent'] as int,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      steps: pulumi.Input.decodeList<CycleStepResponseVmmigrationV1alpha1>(
          map['steps'],
          (value) => CycleStepResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      totalPauseDuration: map['totalPauseDuration'] as String,
      warnings:
          pulumi.Input.decodeList<MigrationWarningResponseVmmigrationV1alpha1>(
              map['warnings'],
              (value) => MigrationWarningResponseVmmigrationV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

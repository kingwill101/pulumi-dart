// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cycle_step_response2.dart';
import 'migration_warning_response2.dart';
import 'status_response31.dart';

/// ReplicationCycle contains information about the current replication cycle status.
class ReplicationCycleResponse2 {
  /// The cycle's ordinal number.
  final int cycleNumber;

  /// The time the replication cycle has ended.
  final String endTime;

  /// Provides details on the state of the cycle in case of an error.
  final StatusResponse31 error;

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
  final List<CycleStepResponse2> steps;

  /// The accumulated duration the replication cycle was paused.
  final String totalPauseDuration;

  /// Warnings that occurred during the cycle.
  final List<MigrationWarningResponse2> warnings;

  ReplicationCycleResponse2({
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
    map['steps'] = Input.encodeList<CycleStepResponse2, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    map['totalPauseDuration'] = totalPauseDuration;
    map['warnings'] =
        Input.encodeList<MigrationWarningResponse2, Map<String, dynamic>>(
            warnings, (value) => value.toMap());
    return map;
  }

  factory ReplicationCycleResponse2.fromMap(Map<String, dynamic> map) {
    return ReplicationCycleResponse2(
      cycleNumber: map['cycleNumber'] as int,
      endTime: map['endTime'] as String,
      error: StatusResponse31.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      progress: map['progress'] as int,
      progressPercent: map['progressPercent'] as int,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      steps: Input.decodeList<CycleStepResponse2>(
          map['steps'],
          (value) => CycleStepResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      totalPauseDuration: map['totalPauseDuration'] as String,
      warnings: Input.decodeList<MigrationWarningResponse2>(
          map['warnings'],
          (value) => MigrationWarningResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

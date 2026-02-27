// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cycle_step_response.dart';
import 'migration_warning_response.dart';
import 'status_response30.dart';

/// ReplicationCycle contains information about the current replication cycle status.
class ReplicationCycleResponse {
  /// The cycle's ordinal number.
  final int cycleNumber;

  /// The time the replication cycle has ended.
  final String endTime;

  /// Provides details on the state of the cycle in case of an error.
  final StatusResponse30 error;

  /// The identifier of the ReplicationCycle.
  final String name;

  /// The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  final int progressPercent;

  /// The time the replication cycle has started.
  final String startTime;

  /// State of the ReplicationCycle.
  final String state;

  /// The cycle's steps list representing its progress.
  final List<CycleStepResponse> steps;

  /// The accumulated duration the replication cycle was paused.
  final String totalPauseDuration;

  /// Warnings that occurred during the cycle.
  final List<MigrationWarningResponse> warnings;

  ReplicationCycleResponse({
    required this.cycleNumber,
    required this.endTime,
    required this.error,
    required this.name,
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
    map['progressPercent'] = progressPercent;
    map['startTime'] = startTime;
    map['state'] = state;
    map['steps'] = Input.encodeList<CycleStepResponse, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    map['totalPauseDuration'] = totalPauseDuration;
    map['warnings'] =
        Input.encodeList<MigrationWarningResponse, Map<String, dynamic>>(
            warnings, (value) => value.toMap());
    return map;
  }

  factory ReplicationCycleResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationCycleResponse(
      cycleNumber: map['cycleNumber'] as int,
      endTime: map['endTime'] as String,
      error: StatusResponse30.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      progressPercent: map['progressPercent'] as int,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      steps: Input.decodeList<CycleStepResponse>(
          map['steps'],
          (value) => CycleStepResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      totalPauseDuration: map['totalPauseDuration'] as String,
      warnings: Input.decodeList<MigrationWarningResponse>(
          map['warnings'],
          (value) => MigrationWarningResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

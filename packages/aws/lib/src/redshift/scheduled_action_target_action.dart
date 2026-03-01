// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_action_target_action_pause_cluster.dart';
import 'scheduled_action_target_action_resize_cluster.dart';
import 'scheduled_action_target_action_resume_cluster.dart';

class ScheduledActionTargetAction {
  /// An action that runs a `PauseCluster` API operation. Documented below.
  final ScheduledActionTargetActionPauseCluster? pauseCluster;

  /// An action that runs a `ResizeCluster` API operation. Documented below.
  final ScheduledActionTargetActionResizeCluster? resizeCluster;

  /// An action that runs a `ResumeCluster` API operation. Documented below.
  final ScheduledActionTargetActionResumeCluster? resumeCluster;

  /// Creates a new [ScheduledActionTargetAction].
  /// [pauseCluster] An action that runs a `PauseCluster` API operation. Documented below.
  /// [resizeCluster] An action that runs a `ResizeCluster` API operation. Documented below.
  /// [resumeCluster] An action that runs a `ResumeCluster` API operation. Documented below.
  ScheduledActionTargetAction({
    this.pauseCluster,
    this.resizeCluster,
    this.resumeCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pauseCluster': ?pauseCluster == null ? null : pauseCluster!.toMap(),
      'resizeCluster': ?resizeCluster == null ? null : resizeCluster!.toMap(),
      'resumeCluster': ?resumeCluster == null ? null : resumeCluster!.toMap(),
    };
  }

  factory ScheduledActionTargetAction.fromMap(Map<String, dynamic> map) {
    return ScheduledActionTargetAction(
      pauseCluster: map['pauseCluster'] == null
          ? null
          : ScheduledActionTargetActionPauseCluster.fromMap(
              (map['pauseCluster'] as Map).cast<String, dynamic>(),
            ),
      resizeCluster: map['resizeCluster'] == null
          ? null
          : ScheduledActionTargetActionResizeCluster.fromMap(
              (map['resizeCluster'] as Map).cast<String, dynamic>(),
            ),
      resumeCluster: map['resumeCluster'] == null
          ? null
          : ScheduledActionTargetActionResumeCluster.fromMap(
              (map['resumeCluster'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

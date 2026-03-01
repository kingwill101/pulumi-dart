// ignore_for_file: unused_element, unnecessary_cast

import 'instance_from_template_scheduling_graceful_shutdown_max_duration.dart';

class InstanceFromTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final InstanceFromTemplateSchedulingGracefulShutdownMaxDuration? maxDuration;

  /// Creates a new [InstanceFromTemplateSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceFromTemplateSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory InstanceFromTemplateSchedulingGracefulShutdown.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null
          ? null
          : InstanceFromTemplateSchedulingGracefulShutdownMaxDuration.fromMap(
              (map['maxDuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

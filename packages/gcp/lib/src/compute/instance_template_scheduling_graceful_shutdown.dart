// ignore_for_file: unused_element, unnecessary_cast

import 'instance_template_scheduling_graceful_shutdown_max_duration.dart';

class InstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state. Structure is documented below:
  final InstanceTemplateSchedulingGracefulShutdownMaxDuration? maxDuration;

  /// Creates a new [InstanceTemplateSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceTemplateSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory InstanceTemplateSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null ? null : InstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap((map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}


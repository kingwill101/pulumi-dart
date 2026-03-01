// ignore_for_file: unused_element, unnecessary_cast

import 'instance_scheduling_graceful_shutdown_max_duration.dart';

class InstanceSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state. Structure is documented below:
  final InstanceSchedulingGracefulShutdownMaxDuration? maxDuration;

  /// Creates a new [InstanceSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory InstanceSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return InstanceSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null ? null : InstanceSchedulingGracefulShutdownMaxDuration.fromMap((map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}


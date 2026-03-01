// ignore_for_file: unused_element, unnecessary_cast

import 'instance_from_machine_image_scheduling_graceful_shutdown_max_duration.dart';

class InstanceFromMachineImageSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final InstanceFromMachineImageSchedulingGracefulShutdownMaxDuration?
  maxDuration;

  /// Creates a new [InstanceFromMachineImageSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceFromMachineImageSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory InstanceFromMachineImageSchedulingGracefulShutdown.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromMachineImageSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null
          ? null
          : InstanceFromMachineImageSchedulingGracefulShutdownMaxDuration.fromMap(
              (map['maxDuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

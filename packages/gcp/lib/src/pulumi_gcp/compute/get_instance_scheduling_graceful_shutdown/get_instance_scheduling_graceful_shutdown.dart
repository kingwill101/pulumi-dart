// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_scheduling_graceful_shutdown_max_duration/get_instance_scheduling_graceful_shutdown_max_duration.dart';

class GetInstanceSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final List<GetInstanceSchedulingGracefulShutdownMaxDuration> maxDurations;

  GetInstanceSchedulingGracefulShutdown({
    required this.enabled,
    required this.maxDurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['maxDurations'] = pulumi.Input.encodeList<
        GetInstanceSchedulingGracefulShutdownMaxDuration,
        Map<String, dynamic>>(maxDurations, (value) => value.toMap());
    return map;
  }

  factory GetInstanceSchedulingGracefulShutdown.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDurations: pulumi.Input.decodeList<
              GetInstanceSchedulingGracefulShutdownMaxDuration>(
          map['maxDurations'],
          (value) => GetInstanceSchedulingGracefulShutdownMaxDuration.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

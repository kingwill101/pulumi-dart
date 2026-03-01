// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool? enabled;

  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final Duration? maxDuration;

  /// Creates a new [SchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  SchedulingGracefulShutdown({this.enabled, this.maxDuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory SchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdown(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null
          ? null
          : Duration.fromMap(
              (map['maxDuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

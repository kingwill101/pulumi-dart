// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdownResponse {
  /// Opts-in for graceful shutdown.
  final bool enabled;
  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final DurationResponse maxDuration;

  /// Creates a new [SchedulingGracefulShutdownResponse].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  SchedulingGracefulShutdownResponse({
    required this.enabled,
    required this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': maxDuration.toMap(),
    };
  }

  factory SchedulingGracefulShutdownResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdownResponse(
      enabled: map['enabled'] as bool,
      maxDuration: DurationResponse.fromMap((map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdownResponse {
  /// Opts-in for graceful shutdown.
  final bool enabled;

  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final DurationResponse maxDuration;

  SchedulingGracefulShutdownResponse({
    required this.enabled,
    required this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['maxDuration'] = maxDuration.toMap();
    return map;
  }

  factory SchedulingGracefulShutdownResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdownResponse(
      enabled: map['enabled'] as bool,
      maxDuration: DurationResponse.fromMap(
          (map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}

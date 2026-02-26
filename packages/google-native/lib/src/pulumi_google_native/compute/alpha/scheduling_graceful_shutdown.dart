// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool? enabled;

  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final Duration? maxDuration;

  SchedulingGracefulShutdown({
    this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final maxDurationValue = maxDuration;
    if (maxDurationValue != null) {
      map['maxDuration'] = maxDurationValue.toMap();
    }
    return map;
  }

  factory SchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdown(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null
          ? null
          : Duration.fromMap(
              (map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}

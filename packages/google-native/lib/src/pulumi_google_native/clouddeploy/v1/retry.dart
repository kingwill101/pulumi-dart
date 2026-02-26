// ignore_for_file: unused_element, unnecessary_cast

import 'retry_backoff_mode.dart';

/// Retries the failed job.
class Retry {
  /// Total number of retries. Retry will skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  final String attempts;

  /// Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  final RetryBackoffMode? backoffMode;

  /// Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  final String? wait;

  Retry({
    required this.attempts,
    this.backoffMode,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attempts'] = attempts;
    final backoffModeValue = backoffMode;
    if (backoffModeValue != null) {
      map['backoffMode'] = backoffModeValue.value;
    }
    final waitValue = wait;
    if (waitValue != null) {
      map['wait'] = waitValue;
    }
    return map;
  }

  factory Retry.fromMap(Map<String, dynamic> map) {
    return Retry(
      attempts: map['attempts'] as String,
      backoffMode: map['backoffMode'] == null
          ? null
          : RetryBackoffMode.fromValue(map['backoffMode'] as String),
      wait: map['wait'] == null ? null : map['wait'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class CanaryScheduleRetryConfig {
  /// Maximum number of retries. The value must be less than or equal to `2`. If `max_retries` is `2`, `run_config.timeout_in_seconds` should be less than 600 seconds. Defaults to `0`.
  final int maxRetries;

  /// Creates a new [CanaryScheduleRetryConfig].
  /// [maxRetries] Maximum number of retries. The value must be less than or equal to `2`. If `max_retries` is `2`, `run_config.timeout_in_seconds` should be less than 600 seconds. Defaults to `0`.
  CanaryScheduleRetryConfig({
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRetries'] = maxRetries;
    return map;
  }

  factory CanaryScheduleRetryConfig.fromMap(Map<String, dynamic> map) {
    return CanaryScheduleRetryConfig(
      maxRetries: map['maxRetries'] as int,
    );
  }
}

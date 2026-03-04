// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CanaryScheduleRetryConfig {
  /// Maximum number of retries. The value must be less than or equal to `2`. If `max_retries` is `2`, `run_config.timeout_in_seconds` should be less than 600 seconds. Defaults to `0`.
  final pulumi.Input<int> maxRetries;

  /// Creates a new [CanaryScheduleRetryConfig].
  /// [maxRetries] Maximum number of retries. The value must be less than or equal to `2`. If `max_retries` is `2`, `run_config.timeout_in_seconds` should be less than 600 seconds. Defaults to `0`.
  CanaryScheduleRetryConfig({required this.maxRetries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRetries': maxRetries};
  }

  factory CanaryScheduleRetryConfig.fromMap(Map<String, dynamic> map) {
    return CanaryScheduleRetryConfig(
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
    );
  }
}

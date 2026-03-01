// ignore_for_file: unused_element, unnecessary_cast

import 'canary_schedule_retry_config.dart';

class CanarySchedule {
  /// Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.
  final int? durationInSeconds;

  /// Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is `rate(number unit)`. _unit_ can be `minute`, `minutes`, or `hour`. For cron expression, the syntax is `cron(expression)`. For more information about the syntax for cron expressions, see [Scheduling canary runs using cron](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html).
  final String expression;

  /// Configuration block for canary retries. Detailed below.
  final CanaryScheduleRetryConfig? retryConfig;

  /// Creates a new [CanarySchedule].
  /// [durationInSeconds] Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.
  /// [expression] Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is `rate(number unit)`. _unit_ can be `minute`, `minutes`, or `hour`. For cron expression, the syntax is `cron(expression)`. For more information about the syntax for cron expressions, see [Scheduling canary runs using cron](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html).
  /// [retryConfig] Configuration block for canary retries. Detailed below.
  CanarySchedule({
    this.durationInSeconds,
    required this.expression,
    this.retryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationInSeconds': ?durationInSeconds,
      'expression': expression,
      'retryConfig': ?retryConfig == null ? null : retryConfig!.toMap(),
    };
  }

  factory CanarySchedule.fromMap(Map<String, dynamic> map) {
    return CanarySchedule(
      durationInSeconds: map['durationInSeconds'] == null
          ? null
          : map['durationInSeconds'] as int,
      expression: map['expression'] as String,
      retryConfig: map['retryConfig'] == null
          ? null
          : CanaryScheduleRetryConfig.fromMap(
              (map['retryConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

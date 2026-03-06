// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_schedule_retry_config.dart';

class CanarySchedule {
  /// Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.
  final pulumi.Input<int>? durationInSeconds;
  /// Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is `rate(number unit)`. _unit_ can be `minute`, `minutes`, or `hour`. For cron expression, the syntax is `cron(expression)`. For more information about the syntax for cron expressions, see [Scheduling canary runs using cron](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html).
  final pulumi.Input<String> expression;
  /// Configuration block for canary retries. Detailed below.
  final pulumi.Input<CanaryScheduleRetryConfig>? retryConfig;

  /// Creates a new [CanarySchedule].
  /// [durationInSeconds] Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.
  /// [expression] Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is `rate(number unit)`. _unit_ can be `minute`, `minutes`, or `hour`. For cron expression, the syntax is `cron(expression)`. For more information about the syntax for cron expressions, see [Scheduling canary runs using cron](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html).
  /// [retryConfig] Configuration block for canary retries. Detailed below.
  const CanarySchedule({
    this.durationInSeconds,
    required this.expression,
    this.retryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationInSeconds': ?durationInSeconds,
      'expression': expression,
      'retryConfig': ?pulumi.Input.mapOptionalInputValue<CanaryScheduleRetryConfig, Map<String, dynamic>>(retryConfig, (value) => value.toMap()),
    };
  }

  factory CanarySchedule.fromMap(Map<String, dynamic> map) {
    return CanarySchedule(
      durationInSeconds: (() { final guardedValue = map['durationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      retryConfig: (() { final guardedValue = map['retryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CanaryScheduleRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an activity.
class ActivityPolicy {
  /// Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? retry;
  /// Interval between each retry attempt (in seconds). The default is 30 sec.
  final pulumi.Input<int?>? retryIntervalInSeconds;
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool?>? secureInput;
  /// When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool?>? secureOutput;
  /// Specifies the timeout for the activity to run. The default timeout is 7 days. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? timeout;

  /// Creates a new [ActivityPolicy].
  /// [retry] Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [retryIntervalInSeconds] Interval between each retry attempt (in seconds). The default is 30 sec.
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  /// [secureOutput] When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  /// [timeout] Specifies the timeout for the activity to run. The default timeout is 7 days. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  const ActivityPolicy({
    this.retry,
    this.retryIntervalInSeconds,
    this.secureInput,
    this.secureOutput,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': ?retry,
      'retryIntervalInSeconds': ?retryIntervalInSeconds,
      'secureInput': ?secureInput,
      'secureOutput': ?secureOutput,
      'timeout': ?timeout,
    };
  }

  factory ActivityPolicy.fromMap(Map<String, dynamic> map) {
    return ActivityPolicy(
      retry: (() { final guardedValue = map['retry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      retryIntervalInSeconds: (() { final guardedValue = map['retryIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      secureInput: (() { final guardedValue = map['secureInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secureOutput: (() { final guardedValue = map['secureOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

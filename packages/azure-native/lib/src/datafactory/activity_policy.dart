// ignore_for_file: unused_element, unnecessary_cast


/// Execution policy for an activity.
class ActivityPolicy {
  /// Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic retry;
  /// Interval between each retry attempt (in seconds). The default is 30 sec.
  final int? retryIntervalInSeconds;
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final bool? secureInput;
  /// When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  final bool? secureOutput;
  /// Specifies the timeout for the activity to run. The default timeout is 7 days. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic timeout;

  /// Creates a new [ActivityPolicy].
  /// [retry] Maximum ordinary retry attempts. Default is 0. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [retryIntervalInSeconds] Interval between each retry attempt (in seconds). The default is 30 sec.
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  /// [secureOutput] When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  /// [timeout] Specifies the timeout for the activity to run. The default timeout is 7 days. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  ActivityPolicy({
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
      retry: map['retry'] == null ? null : map['retry'],
      retryIntervalInSeconds: map['retryIntervalInSeconds'] == null ? null : map['retryIntervalInSeconds'] as int,
      secureInput: map['secureInput'] == null ? null : map['secureInput'] as bool,
      secureOutput: map['secureOutput'] == null ? null : map['secureOutput'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'],
    );
  }
}


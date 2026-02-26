// ignore_for_file: unused_element, unnecessary_cast

class PipelineRetryPolicy {
  /// The maximum number of delivery attempts for any message. The value must
  /// be between 1 and 100.
  /// The default value for this field is 5.
  final int? maxAttempts;

  /// The maximum amount of seconds to wait between retry attempts. The value
  /// must be between 1 and 600.
  /// The default value for this field is 60.
  final String? maxRetryDelay;

  /// The minimum amount of seconds to wait between retry attempts. The value
  /// must be between 1 and 600.
  /// The default value for this field is 5.
  final String? minRetryDelay;

  PipelineRetryPolicy({
    this.maxAttempts,
    this.maxRetryDelay,
    this.minRetryDelay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxAttemptsValue = maxAttempts;
    if (maxAttemptsValue != null) {
      map['maxAttempts'] = maxAttemptsValue;
    }
    final maxRetryDelayValue = maxRetryDelay;
    if (maxRetryDelayValue != null) {
      map['maxRetryDelay'] = maxRetryDelayValue;
    }
    final minRetryDelayValue = minRetryDelay;
    if (minRetryDelayValue != null) {
      map['minRetryDelay'] = minRetryDelayValue;
    }
    return map;
  }

  factory PipelineRetryPolicy.fromMap(Map<String, dynamic> map) {
    return PipelineRetryPolicy(
      maxAttempts:
          map['maxAttempts'] == null ? null : map['maxAttempts'] as int,
      maxRetryDelay:
          map['maxRetryDelay'] == null ? null : map['maxRetryDelay'] as String,
      minRetryDelay:
          map['minRetryDelay'] == null ? null : map['minRetryDelay'] as String,
    );
  }
}

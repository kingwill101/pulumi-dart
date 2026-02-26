// ignore_for_file: unused_element, unnecessary_cast

/// Describes the policy in case of function's execution failure. If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicy {
  /// If specified, then the function will be retried in case of a failure.
  final Map<String, dynamic>? retry;

  FailurePolicy({
    this.retry,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retryValue = retry;
    if (retryValue != null) {
      map['retry'] = retryValue;
    }
    return map;
  }

  factory FailurePolicy.fromMap(Map<String, dynamic> map) {
    return FailurePolicy(
      retry: map['retry'] == null
          ? null
          : (map['retry'] as Map).cast<String, dynamic>(),
    );
  }
}

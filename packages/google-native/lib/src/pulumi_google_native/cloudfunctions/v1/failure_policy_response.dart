// ignore_for_file: unused_element, unnecessary_cast

/// Describes the policy in case of function's execution failure. If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicyResponse {
  /// If specified, then the function will be retried in case of a failure.
  final Map<String, dynamic> retry;

  FailurePolicyResponse({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retry'] = retry;
    return map;
  }

  factory FailurePolicyResponse.fromMap(Map<String, dynamic> map) {
    return FailurePolicyResponse(
      retry: (map['retry'] as Map).cast<String, dynamic>(),
    );
  }
}

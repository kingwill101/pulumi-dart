// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure.
  final bool retry;

  GetFunctionEventTriggerFailurePolicy({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retry'] = retry;
    return map;
  }

  factory GetFunctionEventTriggerFailurePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionEventTriggerFailurePolicy(
      retry: map['retry'] as bool,
    );
  }
}

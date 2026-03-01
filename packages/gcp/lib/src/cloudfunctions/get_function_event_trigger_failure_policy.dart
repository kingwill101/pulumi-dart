// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure.
  final bool retry;

  /// Creates a new [GetFunctionEventTriggerFailurePolicy].
  /// [retry] Whether the function should be retried on failure.
  GetFunctionEventTriggerFailurePolicy({required this.retry});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'retry': retry};
  }

  factory GetFunctionEventTriggerFailurePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFunctionEventTriggerFailurePolicy(retry: map['retry'] as bool);
  }
}

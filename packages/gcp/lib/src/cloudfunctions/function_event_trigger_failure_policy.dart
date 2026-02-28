// ignore_for_file: unused_element, unnecessary_cast


class FunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure. Defaults to `false`.
  final bool retry;

  /// Creates a new [FunctionEventTriggerFailurePolicy].
  /// [retry] Whether the function should be retried on failure. Defaults to `false`.
  FunctionEventTriggerFailurePolicy({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': retry,
    };
  }

  factory FunctionEventTriggerFailurePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionEventTriggerFailurePolicy(
      retry: map['retry'] as bool,
    );
  }
}


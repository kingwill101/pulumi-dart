// ignore_for_file: unused_element, unnecessary_cast

class FunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool retry;

  FunctionEventTriggerFailurePolicy({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retry'] = retry;
    return map;
  }

  factory FunctionEventTriggerFailurePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionEventTriggerFailurePolicy(
      retry: map['retry'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleConditionHttpRequestMethod {
  final List<String> values;

  /// Creates a new [ListenerRuleConditionHttpRequestMethod].
  /// [values] Required.
  ListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory ListenerRuleConditionHttpRequestMethod.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHttpRequestMethod(
      values: (map['values'] as List).cast<String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionHttpRequestMethod {
  final List<String> values;

  /// Creates a new [ListenerRuleConditionHttpRequestMethod].
  /// [values] Required.
  ListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory ListenerRuleConditionHttpRequestMethod.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleConditionHttpRequestMethod(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

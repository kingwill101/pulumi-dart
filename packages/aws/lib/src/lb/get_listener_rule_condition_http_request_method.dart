// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionHttpRequestMethod {
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  /// Creates a new [GetListenerRuleConditionHttpRequestMethod].
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionHttpRequestMethod.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpRequestMethod(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

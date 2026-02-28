// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionPathPattern {
  /// Set of regular expressions to compare against the request URL.
  final List<String> regexValues;

  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  /// Creates a new [GetListenerRuleConditionPathPattern].
  /// [regexValues] Set of regular expressions to compare against the request URL.
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionPathPattern({
    required this.regexValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexValues'] = regexValues;
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionPathPattern.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleConditionPathPattern(
      regexValues: (map['regexValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

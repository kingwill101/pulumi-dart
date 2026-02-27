// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionHostHeader {
  /// Set of regular expressions to compare against the request URL.
  final List<String> regexValues;

  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  GetListenerRuleConditionHostHeader({
    required this.regexValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexValues'] = regexValues;
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionHostHeader.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionHostHeader(
      regexValues: (map['regexValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

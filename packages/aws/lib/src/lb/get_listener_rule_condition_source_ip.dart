// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionSourceIp {
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  /// Creates a new [GetListenerRuleConditionSourceIp].
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionSourceIp({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionSourceIp(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

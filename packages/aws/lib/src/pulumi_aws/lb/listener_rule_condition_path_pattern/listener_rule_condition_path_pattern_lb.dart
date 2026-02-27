// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionPathPatternLb {
  /// List of regular expressions to compare against the request URL. The maximum length of each string is 128 characters. Conflicts with `values`.
  final List<String>? regexValues;

  /// List of path patterns to compare against the request URL. Maximum size of each pattern is 128 characters. Comparison is case-sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a `query_string` condition. Conflicts with `regex_values`.
  final List<String>? values;

  ListenerRuleConditionPathPatternLb({
    this.regexValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regexValuesValue = regexValues;
    if (regexValuesValue != null) {
      map['regexValues'] = regexValuesValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory ListenerRuleConditionPathPatternLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionPathPatternLb(
      regexValues: map['regexValues'] == null
          ? null
          : (map['regexValues'] as List).cast<String>(),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

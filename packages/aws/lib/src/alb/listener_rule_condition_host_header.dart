// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionHostHeader {
  /// List of regular expressions to compare against the host header. The maximum length of each string is 128 characters. Conflicts with `values`.
  final List<String>? regexValues;

  /// List of host header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Conflicts with `regex_values`.
  final List<String>? values;

  /// Creates a new [ListenerRuleConditionHostHeader].
  /// [regexValues] List of regular expressions to compare against the host header. The maximum length of each string is 128 characters. Conflicts with `values`.
  /// [values] List of host header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Conflicts with `regex_values`.
  ListenerRuleConditionHostHeader({this.regexValues, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regexValues': ?regexValues, 'values': ?values};
  }

  factory ListenerRuleConditionHostHeader.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHostHeader(
      regexValues: map['regexValues'] == null
          ? null
          : (map['regexValues'] as List).cast<String>(),
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionHostHeader {
  /// List of regular expressions to compare against the host header. The maximum length of each string is 128 characters. Conflicts with <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span>.
  final List<String>? regexValues;

  /// List of host header value patterns to match. Maximum size of each pattern is 128 characters. Comparison is case-insensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Conflicts with <span pulumi-lang-nodejs="`regexValues`" pulumi-lang-dotnet="`RegexValues`" pulumi-lang-go="`regexValues`" pulumi-lang-python="`regex_values`" pulumi-lang-yaml="`regexValues`" pulumi-lang-java="`regexValues`">`regex_values`</span>.
  final List<String>? values;

  ListenerRuleConditionHostHeader({
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

  factory ListenerRuleConditionHostHeader.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionHostHeader(
      regexValues: map['regexValues'] == null
          ? null
          : (map['regexValues'] as List).cast<String>(),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

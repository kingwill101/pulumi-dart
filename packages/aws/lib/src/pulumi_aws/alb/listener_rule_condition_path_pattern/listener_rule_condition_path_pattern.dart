// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionPathPattern {
  /// List of regular expressions to compare against the request URL. The maximum length of each string is 128 characters. Conflicts with <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span>.
  final List<String>? regexValues;

  /// List of path patterns to compare against the request URL. Maximum size of each pattern is 128 characters. Comparison is case-sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a <span pulumi-lang-nodejs="`queryString`" pulumi-lang-dotnet="`QueryString`" pulumi-lang-go="`queryString`" pulumi-lang-python="`query_string`" pulumi-lang-yaml="`queryString`" pulumi-lang-java="`queryString`">`query_string`</span> condition. Conflicts with <span pulumi-lang-nodejs="`regexValues`" pulumi-lang-dotnet="`RegexValues`" pulumi-lang-go="`regexValues`" pulumi-lang-python="`regex_values`" pulumi-lang-yaml="`regexValues`" pulumi-lang-java="`regexValues`">`regex_values`</span>.
  final List<String>? values;

  ListenerRuleConditionPathPattern({
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

  factory ListenerRuleConditionPathPattern.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionPathPattern(
      regexValues: map['regexValues'] == null
          ? null
          : (map['regexValues'] as List).cast<String>(),
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

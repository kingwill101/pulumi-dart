// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionHttpHeader {
  /// Name of the HTTP header to match.
  final String httpHeaderName;

  /// Set of regular expressions to compare against the request URL.
  final List<String> regexValues;

  /// Set of <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span>-<span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> pairs indicating the query string parameters to match.
  final List<String> values;

  GetListenerRuleConditionHttpHeader({
    required this.httpHeaderName,
    required this.regexValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeaderName'] = httpHeaderName;
    map['regexValues'] = regexValues;
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpHeader(
      httpHeaderName: map['httpHeaderName'] as String,
      regexValues: (map['regexValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

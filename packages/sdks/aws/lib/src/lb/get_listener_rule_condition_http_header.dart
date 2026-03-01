// ignore_for_file: unused_element, unnecessary_cast


class GetListenerRuleConditionHttpHeader {
  /// Name of the HTTP header to match.
  final String httpHeaderName;
  /// Set of regular expressions to compare against the request URL.
  final List<String> regexValues;
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final List<String> values;

  /// Creates a new [GetListenerRuleConditionHttpHeader].
  /// [httpHeaderName] Name of the HTTP header to match.
  /// [regexValues] Set of regular expressions to compare against the request URL.
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleConditionHttpHeader({
    required this.httpHeaderName,
    required this.regexValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaderName': httpHeaderName,
      'regexValues': regexValues,
      'values': values,
    };
  }

  factory GetListenerRuleConditionHttpHeader.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpHeader(
      httpHeaderName: map['httpHeaderName'] as String,
      regexValues: (map['regexValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}


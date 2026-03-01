// ignore_for_file: unused_element, unnecessary_cast


class PolicyCustomRuleMatchConditionMatchVariable {
  /// Describes field of the matchVariable collection
  final String? selector;
  /// The name of the Match Variable. Possible values are `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestUri`, `RequestHeaders`, `RequestBody` and `RequestCookies`.
  final String variableName;

  /// Creates a new [PolicyCustomRuleMatchConditionMatchVariable].
  /// [selector] Describes field of the matchVariable collection
  /// [variableName] The name of the Match Variable. Possible values are `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestUri`, `RequestHeaders`, `RequestBody` and `RequestCookies`.
  PolicyCustomRuleMatchConditionMatchVariable({
    this.selector,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
      'variableName': variableName,
    };
  }

  factory PolicyCustomRuleMatchConditionMatchVariable.fromMap(Map<String, dynamic> map) {
    return PolicyCustomRuleMatchConditionMatchVariable(
      selector: map['selector'] == null ? null : map['selector'] as String,
      variableName: map['variableName'] as String,
    );
  }
}


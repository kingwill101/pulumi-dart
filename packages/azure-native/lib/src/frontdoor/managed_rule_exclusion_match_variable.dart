/// The variable type to be excluded.
enum ManagedRuleExclusionMatchVariable {
  valueRequestHeaderNames("RequestHeaderNames"),
  valueRequestCookieNames("RequestCookieNames"),
  valueQueryStringArgNames("QueryStringArgNames"),
  valueRequestBodyPostArgNames("RequestBodyPostArgNames"),
  valueRequestBodyJsonArgNames("RequestBodyJsonArgNames");

  const ManagedRuleExclusionMatchVariable(this.value);
  final String value;

  static ManagedRuleExclusionMatchVariable fromValue(String value) {
    for (final item in ManagedRuleExclusionMatchVariable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionMatchVariable value: $value');
  }
}


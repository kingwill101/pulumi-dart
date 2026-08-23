/// The variable type to be excluded.
enum ManagedRuleExclusionMatchVariable {
  requestHeaderNames("RequestHeaderNames"),
  requestCookieNames("RequestCookieNames"),
  queryStringArgNames("QueryStringArgNames"),
  requestBodyPostArgNames("RequestBodyPostArgNames"),
  requestBodyJsonArgNames("RequestBodyJsonArgNames");

  const ManagedRuleExclusionMatchVariable(this.wireValue);
  final String wireValue;

  static ManagedRuleExclusionMatchVariable fromValue(String value) {
    for (final item in ManagedRuleExclusionMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionMatchVariable value: $value');
  }
}

/// The variable to be scrubbed from the logs.
enum ScrubbingRuleEntryMatchVariable {
  valueRequestIPAddress("RequestIPAddress"),
  valueRequestUri("RequestUri"),
  valueQueryStringArgNames("QueryStringArgNames"),
  valueRequestHeaderNames("RequestHeaderNames"),
  valueRequestCookieNames("RequestCookieNames"),
  valueRequestBodyPostArgNames("RequestBodyPostArgNames"),
  valueRequestBodyJsonArgNames("RequestBodyJsonArgNames");

  const ScrubbingRuleEntryMatchVariable(this.value);
  final String value;

  static ScrubbingRuleEntryMatchVariable fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchVariable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryMatchVariable value: $value');
  }
}


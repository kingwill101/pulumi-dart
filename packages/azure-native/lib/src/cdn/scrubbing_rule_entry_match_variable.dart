/// The variable to be scrubbed from the logs.
enum ScrubbingRuleEntryMatchVariable {
  requestIPAddress("RequestIPAddress"),
  requestUri("RequestUri"),
  queryStringArgNames("QueryStringArgNames");

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


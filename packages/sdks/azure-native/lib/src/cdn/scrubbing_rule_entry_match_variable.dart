import 'package:pulumi/pulumi.dart' as pulumi;

/// The variable to be scrubbed from the logs.
enum ScrubbingRuleEntryMatchVariable implements pulumi.PulumiEnum<String> {
  requestIPAddress("RequestIPAddress"),
  requestUri("RequestUri"),
  queryStringArgNames("QueryStringArgNames");

  const ScrubbingRuleEntryMatchVariable(this.wireValue);
  @override
  final String wireValue;

  static ScrubbingRuleEntryMatchVariable fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryMatchVariable value: $value');
  }
}

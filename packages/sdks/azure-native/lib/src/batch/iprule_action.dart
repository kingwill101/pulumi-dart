import 'package:pulumi/pulumi.dart' as pulumi;

/// Action when client IP address is matched.
enum IPRuleAction implements pulumi.PulumiEnum<String> {
  allow("Allow");

  const IPRuleAction(this.wireValue);
  @override
  final String wireValue;

  static IPRuleAction fromValue(String value) {
    for (final item in IPRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPRuleAction value: $value');
  }
}

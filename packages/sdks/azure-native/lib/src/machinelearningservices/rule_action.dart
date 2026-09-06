import 'package:pulumi/pulumi.dart' as pulumi;

/// The action enum for networking rule.
enum RuleAction implements pulumi.PulumiEnum<String> {
  allow("Allow"),
  deny("Deny");

  const RuleAction(this.wireValue);
  @override
  final String wireValue;

  static RuleAction fromValue(String value) {
    for (final item in RuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction value: $value');
  }
}

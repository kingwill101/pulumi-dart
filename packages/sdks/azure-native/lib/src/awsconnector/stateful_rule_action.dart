import 'package:pulumi/pulumi.dart' as pulumi;

/// Property action
enum StatefulRuleAction implements pulumi.PulumiEnum<String> {
  aLERT("ALERT"),
  dROP("DROP"),
  pASS("PASS"),
  rEJECT("REJECT");

  const StatefulRuleAction(this.wireValue);
  @override
  final String wireValue;

  static StatefulRuleAction fromValue(String value) {
    for (final item in StatefulRuleAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleAction value: $value');
  }
}

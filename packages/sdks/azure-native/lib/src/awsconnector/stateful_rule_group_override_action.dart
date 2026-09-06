import 'package:pulumi/pulumi.dart' as pulumi;

/// Property action
enum StatefulRuleGroupOverrideAction implements pulumi.PulumiEnum<String> {
  dROPTOALERT("DROP_TO_ALERT");

  const StatefulRuleGroupOverrideAction(this.wireValue);
  @override
  final String wireValue;

  static StatefulRuleGroupOverrideAction fromValue(String value) {
    for (final item in StatefulRuleGroupOverrideAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatefulRuleGroupOverrideAction value: $value');
  }
}

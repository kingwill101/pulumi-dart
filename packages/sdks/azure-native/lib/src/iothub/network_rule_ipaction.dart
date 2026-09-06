import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Filter Action
enum NetworkRuleIPAction implements pulumi.PulumiEnum<String> {
  valueAllow("Allow");

  const NetworkRuleIPAction(this.wireValue);
  @override
  final String wireValue;

  static NetworkRuleIPAction fromValue(String value) {
    for (final item in NetworkRuleIPAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRuleIPAction value: $value');
  }
}

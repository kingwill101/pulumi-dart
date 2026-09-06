import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies what features in AI Foundry network injection applies to. Currently only supports 'agent' for agent scenarios. 'none' means no network injection.
enum ScenarioType implements pulumi.PulumiEnum<String> {
  valueNone("none"),
  valueAgent("agent");

  const ScenarioType(this.wireValue);
  @override
  final String wireValue;

  static ScenarioType fromValue(String value) {
    for (final item in ScenarioType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScenarioType value: $value');
  }
}

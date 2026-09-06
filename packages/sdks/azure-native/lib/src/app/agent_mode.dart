import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of the action
enum AgentMode implements pulumi.PulumiEnum<String> {
  autonomous("Autonomous"),
  review("Review"),
  readOnly("ReadOnly");

  const AgentMode(this.wireValue);
  @override
  final String wireValue;

  static AgentMode fromValue(String value) {
    for (final item in AgentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentMode value: $value');
  }
}

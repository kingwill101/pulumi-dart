import 'package:pulumi/pulumi.dart' as pulumi;

/// The access level of the action
enum AgentAccessLevel implements pulumi.PulumiEnum<String> {
  low("Low"),
  high("High");

  const AgentAccessLevel(this.wireValue);
  @override
  final String wireValue;

  static AgentAccessLevel fromValue(String value) {
    for (final item in AgentAccessLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentAccessLevel value: $value');
  }
}

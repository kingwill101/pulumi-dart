/// The access level of the action
enum AgentAccessLevel {
  low("Low"),
  high("High");

  const AgentAccessLevel(this.wireValue);
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

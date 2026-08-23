/// The mode of the action
enum AgentMode {
  autonomous("Autonomous"),
  review("Review"),
  readOnly("ReadOnly");

  const AgentMode(this.wireValue);
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

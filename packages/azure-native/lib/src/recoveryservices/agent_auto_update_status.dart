/// A value indicating whether the auto update is enabled.
enum AgentAutoUpdateStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const AgentAutoUpdateStatus(this.value);
  final String value;

  static AgentAutoUpdateStatus fromValue(String value) {
    for (final item in AgentAutoUpdateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentAutoUpdateStatus value: $value');
  }
}


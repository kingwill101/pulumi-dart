/// SSH access method of an agent pool.
enum AgentPoolSSHAccess {
  valueLocalUser("LocalUser"),
  valueDisabled("Disabled");

  const AgentPoolSSHAccess(this.wireValue);
  final String wireValue;

  static AgentPoolSSHAccess fromValue(String value) {
    for (final item in AgentPoolSSHAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolSSHAccess value: $value');
  }
}

/// SSH access method of an agent pool.
enum AgentPoolSSHAccess {
  valueLocalUser("LocalUser"),
  valueDisabled("Disabled");

  const AgentPoolSSHAccess(this.value);
  final String value;

  static AgentPoolSSHAccess fromValue(String value) {
    for (final item in AgentPoolSSHAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolSSHAccess value: $value');
  }
}


/// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
enum Mode {
  valueSystem("System"),
  valueLB("LB"),
  valueUser("User");

  const Mode(this.value);
  final String value;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}


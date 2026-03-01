/// SQL IaaS Agent least privilege mode.
enum LeastPrivilegeMode {
  enabled("Enabled"),
  notSet("NotSet");

  const LeastPrivilegeMode(this.value);
  final String value;

  static LeastPrivilegeMode fromValue(String value) {
    for (final item in LeastPrivilegeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LeastPrivilegeMode value: $value');
  }
}


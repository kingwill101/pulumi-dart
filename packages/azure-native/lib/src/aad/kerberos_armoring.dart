/// A flag to determine whether or not KerberosArmoring is enabled or disabled.
enum KerberosArmoring {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const KerberosArmoring(this.value);
  final String value;

  static KerberosArmoring fromValue(String value) {
    for (final item in KerberosArmoring.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosArmoring value: $value');
  }
}


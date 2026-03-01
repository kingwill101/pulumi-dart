/// Gets or Sets Default Storage Firewall configuration information
enum DefaultStorageFirewall {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const DefaultStorageFirewall(this.value);
  final String value;

  static DefaultStorageFirewall fromValue(String value) {
    for (final item in DefaultStorageFirewall.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultStorageFirewall value: $value');
  }
}


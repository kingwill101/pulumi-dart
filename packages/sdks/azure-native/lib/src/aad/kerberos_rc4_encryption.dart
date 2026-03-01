/// A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
enum KerberosRc4Encryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const KerberosRc4Encryption(this.value);
  final String value;

  static KerberosRc4Encryption fromValue(String value) {
    for (final item in KerberosRc4Encryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosRc4Encryption value: $value');
  }
}


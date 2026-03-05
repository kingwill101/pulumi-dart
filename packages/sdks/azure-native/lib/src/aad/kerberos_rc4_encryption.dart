/// A flag to determine whether or not KerberosRc4Encryption is enabled or disabled.
enum KerberosRc4Encryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const KerberosRc4Encryption(this.wireValue);
  final String wireValue;

  static KerberosRc4Encryption fromValue(String value) {
    for (final item in KerberosRc4Encryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosRc4Encryption value: $value');
  }
}


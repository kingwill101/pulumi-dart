import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
enum SyncKerberosPasswords implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncKerberosPasswords(this.wireValue);
  @override
  final String wireValue;

  static SyncKerberosPasswords fromValue(String value) {
    for (final item in SyncKerberosPasswords.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncKerberosPasswords value: $value');
  }
}

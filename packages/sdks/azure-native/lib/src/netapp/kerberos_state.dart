import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe if a cache is Kerberos enabled.
enum KerberosState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const KerberosState(this.wireValue);
  @override
  final String wireValue;

  static KerberosState fromValue(String value) {
    for (final item in KerberosState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosState value: $value');
  }
}

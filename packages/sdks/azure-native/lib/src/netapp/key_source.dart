import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
enum KeySource implements pulumi.PulumiEnum<String> {
  microsoftNetApp("Microsoft.NetApp"),
  microsoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.wireValue);
  @override
  final String wireValue;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not SyncOnPremPasswords is enabled or disabled.
enum SyncOnPremPasswords implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncOnPremPasswords(this.wireValue);
  @override
  final String wireValue;

  static SyncOnPremPasswords fromValue(String value) {
    for (final item in SyncOnPremPasswords.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncOnPremPasswords value: $value');
  }
}

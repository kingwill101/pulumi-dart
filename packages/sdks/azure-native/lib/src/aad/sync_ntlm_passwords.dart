import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not SyncNtlmPasswords is enabled or disabled.
enum SyncNtlmPasswords implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncNtlmPasswords(this.wireValue);
  @override
  final String wireValue;

  static SyncNtlmPasswords fromValue(String value) {
    for (final item in SyncNtlmPasswords.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncNtlmPasswords value: $value');
  }
}

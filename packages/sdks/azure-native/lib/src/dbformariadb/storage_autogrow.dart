import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable Storage Auto Grow.
enum StorageAutogrow implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StorageAutogrow(this.wireValue);
  @override
  final String wireValue;

  static StorageAutogrow fromValue(String value) {
    for (final item in StorageAutogrow.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAutogrow value: $value');
  }
}

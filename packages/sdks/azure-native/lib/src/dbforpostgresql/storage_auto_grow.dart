import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag to enable or disable the automatic growth of storage size of a server when available space is nearing zero and conditions allow for automatically growing storage size.
enum StorageAutoGrow implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const StorageAutoGrow(this.wireValue);
  @override
  final String wireValue;

  static StorageAutoGrow fromValue(String value) {
    for (final item in StorageAutoGrow.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAutoGrow value: $value');
  }
}

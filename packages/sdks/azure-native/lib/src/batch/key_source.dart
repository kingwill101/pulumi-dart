import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the key source.
enum KeySource implements pulumi.PulumiEnum<String> {
  microsoftBatch("Microsoft.Batch"),
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

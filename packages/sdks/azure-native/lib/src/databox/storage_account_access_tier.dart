import 'package:pulumi/pulumi.dart' as pulumi;

enum StorageAccountAccessTier implements pulumi.PulumiEnum<String> {
  valueArchive("Archive");

  const StorageAccountAccessTier(this.wireValue);
  @override
  final String wireValue;

  static StorageAccountAccessTier fromValue(String value) {
    for (final item in StorageAccountAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountAccessTier value: $value');
  }
}

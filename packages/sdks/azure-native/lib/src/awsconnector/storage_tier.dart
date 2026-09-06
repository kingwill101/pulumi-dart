import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum StorageTier implements pulumi.PulumiEnum<String> {
  archive("archive"),
  standard("standard");

  const StorageTier(this.wireValue);
  @override
  final String wireValue;

  static StorageTier fromValue(String value) {
    for (final item in StorageTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTier value: $value');
  }
}

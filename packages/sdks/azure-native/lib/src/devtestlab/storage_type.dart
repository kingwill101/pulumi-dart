import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage type for the disk (i.e. Standard, Premium).
enum StorageType implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  premium("Premium"),
  standardSSD("StandardSSD");

  const StorageType(this.wireValue);
  @override
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}

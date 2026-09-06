import 'package:pulumi/pulumi.dart' as pulumi;

/// The redundant type of the server storage. The parameter is used for server creation.
enum StorageRedundancyEnum implements pulumi.PulumiEnum<String> {
  valueLocalRedundancy("LocalRedundancy"),
  valueZoneRedundancy("ZoneRedundancy");

  const StorageRedundancyEnum(this.wireValue);
  @override
  final String wireValue;

  static StorageRedundancyEnum fromValue(String value) {
    for (final item in StorageRedundancyEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageRedundancyEnum value: $value');
  }
}

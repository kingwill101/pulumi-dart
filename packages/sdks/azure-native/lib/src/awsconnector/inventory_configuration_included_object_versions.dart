import 'package:pulumi/pulumi.dart' as pulumi;

/// Object versions to include in the inventory list. If set to ``All``, the list includes all the object versions, which adds the version-related fields ``VersionId``, ``IsLatest``, and ``DeleteMarker`` to the list. If set to ``Current``, the list does not contain these version-related fields.
enum InventoryConfigurationIncludedObjectVersions implements pulumi.PulumiEnum<String> {
  all("All"),
  current("Current");

  const InventoryConfigurationIncludedObjectVersions(this.wireValue);
  @override
  final String wireValue;

  static InventoryConfigurationIncludedObjectVersions fromValue(String value) {
    for (final item in InventoryConfigurationIncludedObjectVersions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryConfigurationIncludedObjectVersions value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of sync that is configured for the catalog.
enum CatalogSyncType implements pulumi.PulumiEnum<String> {
  valueManual("Manual"),
  valueScheduled("Scheduled");

  const CatalogSyncType(this.wireValue);
  @override
  final String wireValue;

  static CatalogSyncType fromValue(String value) {
    for (final item in CatalogSyncType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogSyncType value: $value');
  }
}

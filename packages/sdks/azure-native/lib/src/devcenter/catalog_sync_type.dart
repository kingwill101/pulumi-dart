/// Indicates the type of sync that is configured for the catalog.
enum CatalogSyncType {
  valueManual("Manual"),
  valueScheduled("Scheduled");

  const CatalogSyncType(this.value);
  final String value;

  static CatalogSyncType fromValue(String value) {
    for (final item in CatalogSyncType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogSyncType value: $value');
  }
}


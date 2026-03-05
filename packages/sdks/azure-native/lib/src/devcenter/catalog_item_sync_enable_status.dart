/// Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
enum CatalogItemSyncEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const CatalogItemSyncEnableStatus(this.wireValue);
  final String wireValue;

  static CatalogItemSyncEnableStatus fromValue(String value) {
    for (final item in CatalogItemSyncEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogItemSyncEnableStatus value: $value');
  }
}


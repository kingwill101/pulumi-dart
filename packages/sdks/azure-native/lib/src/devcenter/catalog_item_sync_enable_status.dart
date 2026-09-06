import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
enum CatalogItemSyncEnableStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const CatalogItemSyncEnableStatus(this.wireValue);
  @override
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

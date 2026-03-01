enum GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem {
  schemaModificationUnspecified("SCHEMA_MODIFICATION_UNSPECIFIED"),
  schemaNewColumns("SCHEMA_NEW_COLUMNS"),
  schemaRemovedColumns("SCHEMA_REMOVED_COLUMNS");

  const GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem(this.value);
  final String value;

  static GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem fromValue(
    String value,
  ) {
    for (final item
        in GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem value: $value',
    );
  }
}

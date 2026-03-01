enum GooglePrivacyDlpV2BigQueryTableTypesTypesItem {
  bigQueryTableTypeUnspecified("BIG_QUERY_TABLE_TYPE_UNSPECIFIED"),
  bigQueryTableTypeTable("BIG_QUERY_TABLE_TYPE_TABLE"),
  bigQueryTableTypeExternalBigLake("BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE");

  const GooglePrivacyDlpV2BigQueryTableTypesTypesItem(this.value);
  final String value;

  static GooglePrivacyDlpV2BigQueryTableTypesTypesItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2BigQueryTableTypesTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2BigQueryTableTypesTypesItem value: $value',
    );
  }
}

/// Optional. The edition of the given Cloud SQL instance.
enum CloudSqlSettingsEdition {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const CloudSqlSettingsEdition(this.value);
  final String value;

  static CloudSqlSettingsEdition fromValue(String value) {
    for (final item in CloudSqlSettingsEdition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsEdition value: $value');
  }
}

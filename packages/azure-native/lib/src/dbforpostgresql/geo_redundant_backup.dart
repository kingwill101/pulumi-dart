/// Enable Geo-redundant or not for server backup.
enum GeoRedundantBackup {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoRedundantBackup(this.value);
  final String value;

  static GeoRedundantBackup fromValue(String value) {
    for (final item in GeoRedundantBackup.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoRedundantBackup value: $value');
  }
}


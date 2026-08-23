/// Enable Geo-redundant or not for server backup.
enum GeoRedundantBackup {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoRedundantBackup(this.wireValue);
  final String wireValue;

  static GeoRedundantBackup fromValue(String value) {
    for (final item in GeoRedundantBackup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoRedundantBackup value: $value');
  }
}

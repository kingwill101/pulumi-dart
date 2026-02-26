/// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
enum SettingsAvailabilityType2 {
  sqlAvailabilityTypeUnspecified("SQL_AVAILABILITY_TYPE_UNSPECIFIED"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const SettingsAvailabilityType2(this.value);
  final String value;

  static SettingsAvailabilityType2 fromValue(String value) {
    for (final item in SettingsAvailabilityType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsAvailabilityType2 value: $value');
  }
}

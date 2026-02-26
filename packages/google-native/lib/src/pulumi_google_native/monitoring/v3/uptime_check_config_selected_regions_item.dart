enum UptimeCheckConfigSelectedRegionsItem {
  regionUnspecified("REGION_UNSPECIFIED"),
  usa("USA"),
  europe("EUROPE"),
  southAmerica("SOUTH_AMERICA"),
  asiaPacific("ASIA_PACIFIC"),
  usaOregon("USA_OREGON"),
  usaIowa("USA_IOWA"),
  usaVirginia("USA_VIRGINIA");

  const UptimeCheckConfigSelectedRegionsItem(this.value);
  final String value;

  static UptimeCheckConfigSelectedRegionsItem fromValue(String value) {
    for (final item in UptimeCheckConfigSelectedRegionsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UptimeCheckConfigSelectedRegionsItem value: $value');
  }
}

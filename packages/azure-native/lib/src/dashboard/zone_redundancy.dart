/// The zone redundancy setting of the Grafana instance.
enum ZoneRedundancy {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ZoneRedundancy(this.value);
  final String value;

  static ZoneRedundancy fromValue(String value) {
    for (final item in ZoneRedundancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundancy value: $value');
  }
}


/// Enable zone redundancy for all databases in this tier.
enum ZoneRedundancy {
  enabled("Enabled"),
  disabled("Disabled");

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


/// Whether or not zone redundancy is enabled for this container registry replication
enum ZoneRedundancy {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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


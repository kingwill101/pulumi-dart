/// Defines the zone redundant resource setting.
enum ZoneRedundant {
  valueEnable("Enable"),
  valueDisable("Disable");

  const ZoneRedundant(this.value);
  final String value;

  static ZoneRedundant fromValue(String value) {
    for (final item in ZoneRedundant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundant value: $value');
  }
}


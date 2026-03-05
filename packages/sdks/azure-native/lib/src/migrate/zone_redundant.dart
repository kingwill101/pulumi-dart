/// Defines the zone redundant resource setting.
enum ZoneRedundant {
  valueEnable("Enable"),
  valueDisable("Disable");

  const ZoneRedundant(this.wireValue);
  final String wireValue;

  static ZoneRedundant fromValue(String value) {
    for (final item in ZoneRedundant.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundant value: $value');
  }
}


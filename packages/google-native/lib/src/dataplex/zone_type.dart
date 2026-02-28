/// Required. Immutable. The type of the zone.
enum ZoneType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  raw("RAW"),
  curated("CURATED");

  const ZoneType(this.value);
  final String value;

  static ZoneType fromValue(String value) {
    for (final item in ZoneType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneType value: $value');
  }
}


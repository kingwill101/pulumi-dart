/// The type of this DNS zone (Public or Private).
enum ZoneType {
  valuePublic("Public"),
  valuePrivate("Private");

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


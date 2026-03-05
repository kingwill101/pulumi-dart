/// Group type.
enum GroupType {
  valueCustom("custom"),
  valueSystem("system"),
  valueExternal("external");

  const GroupType(this.wireValue);
  final String wireValue;

  static GroupType fromValue(String value) {
    for (final item in GroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupType value: $value');
  }
}


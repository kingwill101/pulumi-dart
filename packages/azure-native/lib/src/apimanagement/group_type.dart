/// Group type.
enum GroupType {
  valueCustom("custom"),
  valueSystem("system"),
  valueExternal("external");

  const GroupType(this.value);
  final String value;

  static GroupType fromValue(String value) {
    for (final item in GroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupType value: $value');
  }
}


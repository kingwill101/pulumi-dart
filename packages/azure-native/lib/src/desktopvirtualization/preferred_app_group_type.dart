/// The type of preferred application group type, default to Desktop Application Group
enum PreferredAppGroupType {
  valueNone("None"),
  valueDesktop("Desktop"),
  valueRailApplications("RailApplications");

  const PreferredAppGroupType(this.value);
  final String value;

  static PreferredAppGroupType fromValue(String value) {
    for (final item in PreferredAppGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredAppGroupType value: $value');
  }
}


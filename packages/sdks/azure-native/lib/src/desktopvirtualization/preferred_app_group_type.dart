/// The type of preferred application group type, default to Desktop Application Group
enum PreferredAppGroupType {
  valueNone("None"),
  valueDesktop("Desktop"),
  valueRailApplications("RailApplications");

  const PreferredAppGroupType(this.wireValue);
  final String wireValue;

  static PreferredAppGroupType fromValue(String value) {
    for (final item in PreferredAppGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredAppGroupType value: $value');
  }
}

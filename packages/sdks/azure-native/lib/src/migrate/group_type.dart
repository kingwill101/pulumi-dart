/// Gets the group type for the assessment.
enum GroupType {
  valueDefault("Default"),
  valueImport("Import");

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


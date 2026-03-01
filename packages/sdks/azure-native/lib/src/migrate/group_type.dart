/// Gets the group type for the assessment.
enum GroupType {
  valueDefault("Default"),
  valueImport("Import");

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


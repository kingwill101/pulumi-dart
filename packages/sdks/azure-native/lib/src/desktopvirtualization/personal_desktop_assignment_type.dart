/// PersonalDesktopAssignment type for HostPool.
enum PersonalDesktopAssignmentType {
  valueAutomatic("Automatic"),
  valueDirect("Direct");

  const PersonalDesktopAssignmentType(this.wireValue);
  final String wireValue;

  static PersonalDesktopAssignmentType fromValue(String value) {
    for (final item in PersonalDesktopAssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersonalDesktopAssignmentType value: $value');
  }
}

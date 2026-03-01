/// PersonalDesktopAssignment type for HostPool.
enum PersonalDesktopAssignmentType {
  valueAutomatic("Automatic"),
  valueDirect("Direct");

  const PersonalDesktopAssignmentType(this.value);
  final String value;

  static PersonalDesktopAssignmentType fromValue(String value) {
    for (final item in PersonalDesktopAssignmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersonalDesktopAssignmentType value: $value');
  }
}


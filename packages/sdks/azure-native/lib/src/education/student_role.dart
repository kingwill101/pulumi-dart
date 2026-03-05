/// Student Role
enum StudentRole {
  valueStudent("Student"),
  valueAdmin("Admin");

  const StudentRole(this.wireValue);
  final String wireValue;

  static StudentRole fromValue(String value) {
    for (final item in StudentRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StudentRole value: $value');
  }
}


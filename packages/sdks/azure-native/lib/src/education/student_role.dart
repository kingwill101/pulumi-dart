/// Student Role
enum StudentRole {
  valueStudent("Student"),
  valueAdmin("Admin");

  const StudentRole(this.value);
  final String value;

  static StudentRole fromValue(String value) {
    for (final item in StudentRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StudentRole value: $value');
  }
}


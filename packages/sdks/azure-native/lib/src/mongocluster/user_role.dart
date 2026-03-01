/// The role that is assigned to the user on the database scope.
enum UserRole {
  databaseOwner("dbOwner");

  const UserRole(this.value);
  final String value;

  static UserRole fromValue(String value) {
    for (final item in UserRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserRole value: $value');
  }
}


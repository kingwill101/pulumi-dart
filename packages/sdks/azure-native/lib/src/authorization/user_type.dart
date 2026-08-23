/// The type of user.
enum UserType {
  user("User"),
  group("Group");

  const UserType(this.wireValue);
  final String wireValue;

  static UserType fromValue(String value) {
    for (final item in UserType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType value: $value');
  }
}

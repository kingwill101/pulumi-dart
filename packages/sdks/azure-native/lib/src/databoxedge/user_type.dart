/// Type of the user.
enum UserType {
  valueShare("Share"),
  valueLocalManagement("LocalManagement"),
  valueARM("ARM");

  const UserType(this.value);
  final String value;

  static UserType fromValue(String value) {
    for (final item in UserType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType value: $value');
  }
}


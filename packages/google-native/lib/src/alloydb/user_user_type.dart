/// Optional. Type of this user.
enum UserUserType {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserType(this.value);
  final String value;

  static UserUserType fromValue(String value) {
    for (final item in UserUserType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserType value: $value');
  }
}


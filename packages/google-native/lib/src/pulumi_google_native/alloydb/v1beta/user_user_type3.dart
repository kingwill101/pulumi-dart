/// Optional. Type of this user.
enum UserUserType3 {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserType3(this.value);
  final String value;

  static UserUserType3 fromValue(String value) {
    for (final item in UserUserType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserType3 value: $value');
  }
}

/// Optional. Type of this user.
enum UserUserType2 {
  userTypeUnspecified("USER_TYPE_UNSPECIFIED"),
  alloydbBuiltIn("ALLOYDB_BUILT_IN"),
  alloydbIamUser("ALLOYDB_IAM_USER");

  const UserUserType2(this.value);
  final String value;

  static UserUserType2 fromValue(String value) {
    for (final item in UserUserType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserUserType2 value: $value');
  }
}

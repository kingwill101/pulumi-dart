/// Dual password status for the user.
enum UserDualPasswordType2 {
  dualPasswordTypeUnspecified("DUAL_PASSWORD_TYPE_UNSPECIFIED"),
  noModifyDualPassword("NO_MODIFY_DUAL_PASSWORD"),
  noDualPassword("NO_DUAL_PASSWORD"),
  dualPassword("DUAL_PASSWORD");

  const UserDualPasswordType2(this.value);
  final String value;

  static UserDualPasswordType2 fromValue(String value) {
    for (final item in UserDualPasswordType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserDualPasswordType2 value: $value');
  }
}

/// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
enum UrlMapLogin2 {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const UrlMapLogin2(this.value);
  final String value;

  static UrlMapLogin2 fromValue(String value) {
    for (final item in UrlMapLogin2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapLogin2 value: $value');
  }
}

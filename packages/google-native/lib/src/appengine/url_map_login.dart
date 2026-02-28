/// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
enum UrlMapLogin {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const UrlMapLogin(this.value);
  final String value;

  static UrlMapLogin fromValue(String value) {
    for (final item in UrlMapLogin.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapLogin value: $value');
  }
}


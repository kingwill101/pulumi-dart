/// Level of login required to access this resource. Defaults to optional.
enum ApiConfigHandlerLogin {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const ApiConfigHandlerLogin(this.value);
  final String value;

  static ApiConfigHandlerLogin fromValue(String value) {
    for (final item in ApiConfigHandlerLogin.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerLogin value: $value');
  }
}


/// Level of login required to access this resource. Defaults to optional.
enum ApiConfigHandlerLogin2 {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const ApiConfigHandlerLogin2(this.value);
  final String value;

  static ApiConfigHandlerLogin2 fromValue(String value) {
    for (final item in ApiConfigHandlerLogin2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerLogin2 value: $value');
  }
}

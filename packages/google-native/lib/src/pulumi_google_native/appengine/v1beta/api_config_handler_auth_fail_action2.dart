/// Action to take when users access resources that require authentication. Defaults to redirect.
enum ApiConfigHandlerAuthFailAction2 {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const ApiConfigHandlerAuthFailAction2(this.value);
  final String value;

  static ApiConfigHandlerAuthFailAction2 fromValue(String value) {
    for (final item in ApiConfigHandlerAuthFailAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ApiConfigHandlerAuthFailAction2 value: $value');
  }
}

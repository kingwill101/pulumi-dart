/// Action to take when users access resources that require authentication. Defaults to redirect.
enum UrlMapAuthFailAction2 {
  authFailActionUnspecified("AUTH_FAIL_ACTION_UNSPECIFIED"),
  authFailActionRedirect("AUTH_FAIL_ACTION_REDIRECT"),
  authFailActionUnauthorized("AUTH_FAIL_ACTION_UNAUTHORIZED");

  const UrlMapAuthFailAction2(this.value);
  final String value;

  static UrlMapAuthFailAction2 fromValue(String value) {
    for (final item in UrlMapAuthFailAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapAuthFailAction2 value: $value');
  }
}

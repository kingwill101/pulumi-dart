/// The action to take when an unauthenticated client attempts to access the app.
enum UnauthenticatedClientActionV2 {
  valueRedirectToLoginPage("RedirectToLoginPage"),
  valueAllowAnonymous("AllowAnonymous"),
  valueReturn401("Return401"),
  valueReturn403("Return403");

  const UnauthenticatedClientActionV2(this.value);
  final String value;

  static UnauthenticatedClientActionV2 fromValue(String value) {
    for (final item in UnauthenticatedClientActionV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnauthenticatedClientActionV2 value: $value');
  }
}


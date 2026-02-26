/// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
enum AuthorizedOrgsDescAuthorizationType {
  authorizationTypeUnspecified("AUTHORIZATION_TYPE_UNSPECIFIED"),
  authorizationTypeTrust("AUTHORIZATION_TYPE_TRUST");

  const AuthorizedOrgsDescAuthorizationType(this.value);
  final String value;

  static AuthorizedOrgsDescAuthorizationType fromValue(String value) {
    for (final item in AuthorizedOrgsDescAuthorizationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizedOrgsDescAuthorizationType value: $value');
  }
}

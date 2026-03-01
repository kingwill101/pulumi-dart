/// The convention used when determining the session cookie's expiration.
enum CookieExpirationConvention {
  valueFixedTime("FixedTime"),
  valueIdentityProviderDerived("IdentityProviderDerived");

  const CookieExpirationConvention(this.value);
  final String value;

  static CookieExpirationConvention fromValue(String value) {
    for (final item in CookieExpirationConvention.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CookieExpirationConvention value: $value');
  }
}


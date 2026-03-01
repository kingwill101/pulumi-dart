/// Type of provider for OAuth.
enum OpenAuthenticationProviderType {
  valueAAD("AAD");

  const OpenAuthenticationProviderType(this.value);
  final String value;

  static OpenAuthenticationProviderType fromValue(String value) {
    for (final item in OpenAuthenticationProviderType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OpenAuthenticationProviderType value: $value');
  }
}


/// Type of provider for OAuth.
enum OpenAuthenticationProviderType {
  valueAAD("AAD");

  const OpenAuthenticationProviderType(this.wireValue);
  final String wireValue;

  static OpenAuthenticationProviderType fromValue(String value) {
    for (final item in OpenAuthenticationProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OpenAuthenticationProviderType value: $value');
  }
}


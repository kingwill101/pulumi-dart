/// The type of identity provider that the user belongs to.
enum IdentityProviderType {
  microsoftEntraID("MicrosoftEntraID");

  const IdentityProviderType(this.wireValue);
  final String wireValue;

  static IdentityProviderType fromValue(String value) {
    for (final item in IdentityProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityProviderType value: $value');
  }
}


/// Identity Provider Type identifier.
enum IdentityProviderType {
  valueFacebook("facebook"),
  valueGoogle("google"),
  valueMicrosoft("microsoft"),
  valueTwitter("twitter"),
  valueAad("aad"),
  valueAadB2C("aadB2C");

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


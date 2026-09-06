import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity Provider Type identifier.
enum IdentityProviderType implements pulumi.PulumiEnum<String> {
  valueFacebook("facebook"),
  valueGoogle("google"),
  valueMicrosoft("microsoft"),
  valueTwitter("twitter"),
  valueAad("aad"),
  valueAadB2C("aadB2C");

  const IdentityProviderType(this.wireValue);
  @override
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

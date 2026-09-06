import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity provider that the user belongs to.
enum IdentityProviderType implements pulumi.PulumiEnum<String> {
  microsoftEntraID("MicrosoftEntraID");

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

import 'package:pulumi/pulumi.dart' as pulumi;

/// OAuth2 grant type options
enum OAuth2GrantType implements pulumi.PulumiEnum<String> {
  authorizationCode("AuthorizationCode"),
  clientCredentials("ClientCredentials");

  const OAuth2GrantType(this.wireValue);
  @override
  final String wireValue;

  static OAuth2GrantType fromValue(String value) {
    for (final item in OAuth2GrantType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OAuth2GrantType value: $value');
  }
}

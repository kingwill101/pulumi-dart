import 'package:pulumi/pulumi.dart' as pulumi;

enum GrantType implements pulumi.PulumiEnum<String> {
  valueAuthorizationCode("authorizationCode"),
  valueImplicit("implicit"),
  valueResourceOwnerPassword("resourceOwnerPassword"),
  valueClientCredentials("clientCredentials");

  const GrantType(this.wireValue);
  @override
  final String wireValue;

  static GrantType fromValue(String value) {
    for (final item in GrantType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GrantType value: $value');
  }
}

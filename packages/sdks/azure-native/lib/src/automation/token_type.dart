import 'package:pulumi/pulumi.dart' as pulumi;

/// The token type. Must be either PersonalAccessToken or Oauth.
enum TokenType implements pulumi.PulumiEnum<String> {
  personalAccessToken("PersonalAccessToken"),
  oauth("Oauth");

  const TokenType(this.wireValue);
  @override
  final String wireValue;

  static TokenType fromValue(String value) {
    for (final item in TokenType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenType value: $value');
  }
}

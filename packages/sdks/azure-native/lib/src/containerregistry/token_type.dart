import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Auth token.
enum TokenType implements pulumi.PulumiEnum<String> {
  valuePAT("PAT"),
  valueOAuth("OAuth");

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

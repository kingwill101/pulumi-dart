import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of client authentication.
enum AuthenticationMethod implements pulumi.PulumiEnum<String> {
  valueToken("Token"),
  valueAAD("AAD");

  const AuthenticationMethod(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationMethod fromValue(String value) {
    for (final item in AuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMethod value: $value');
  }
}

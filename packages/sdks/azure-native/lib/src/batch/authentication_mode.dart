import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication mode for the Batch account.
enum AuthenticationMode implements pulumi.PulumiEnum<String> {
  sharedKey("SharedKey"),
  aAD("AAD"),
  taskAuthenticationToken("TaskAuthenticationToken");

  const AuthenticationMode(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}

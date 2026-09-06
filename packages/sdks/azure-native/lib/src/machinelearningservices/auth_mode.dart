import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Authentication mode for the endpoint.
enum AuthMode implements pulumi.PulumiEnum<String> {
  valueAAD("AAD");

  const AuthMode(this.wireValue);
  @override
  final String wireValue;

  static AuthMode fromValue(String value) {
    for (final item in AuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMode value: $value');
  }
}

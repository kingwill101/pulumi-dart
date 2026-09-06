import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the server supports password based authentication.
enum PasswordBasedAuth implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const PasswordBasedAuth(this.wireValue);
  @override
  final String wireValue;

  static PasswordBasedAuth fromValue(String value) {
    for (final item in PasswordBasedAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordBasedAuth value: $value');
  }
}

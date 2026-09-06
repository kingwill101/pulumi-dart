import 'package:pulumi/pulumi.dart' as pulumi;

enum PasswordAuth implements pulumi.PulumiEnum<String> {
  enabled("enabled"),
  disabled("disabled");

  const PasswordAuth(this.wireValue);
  @override
  final String wireValue;

  static PasswordAuth fromValue(String value) {
    for (final item in PasswordAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordAuth value: $value');
  }
}

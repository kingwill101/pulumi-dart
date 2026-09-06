import 'package:pulumi/pulumi.dart' as pulumi;

enum ActiveDirectoryAuth implements pulumi.PulumiEnum<String> {
  enabled("enabled"),
  disabled("disabled");

  const ActiveDirectoryAuth(this.wireValue);
  @override
  final String wireValue;

  static ActiveDirectoryAuth fromValue(String value) {
    for (final item in ActiveDirectoryAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveDirectoryAuth value: $value');
  }
}

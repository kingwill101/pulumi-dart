import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of authentication to use when connecting to a target.
enum TargetAuthenticationType implements pulumi.PulumiEnum<String> {
  aad("Aad"),
  sql("Sql");

  const TargetAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static TargetAuthenticationType fromValue(String value) {
    for (final item in TargetAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAuthenticationType value: $value');
  }
}

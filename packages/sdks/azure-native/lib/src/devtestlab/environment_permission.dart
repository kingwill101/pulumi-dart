import 'package:pulumi/pulumi.dart' as pulumi;

/// The access rights to be granted to the user when provisioning an environment
enum EnvironmentPermission implements pulumi.PulumiEnum<String> {
  reader("Reader"),
  contributor("Contributor");

  const EnvironmentPermission(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentPermission fromValue(String value) {
    for (final item in EnvironmentPermission.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentPermission value: $value');
  }
}

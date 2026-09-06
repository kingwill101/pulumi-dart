import 'package:pulumi/pulumi.dart' as pulumi;

/// Environment kind.
enum EnvironmentKind implements pulumi.PulumiEnum<String> {
  development("development"),
  testing("testing"),
  staging("staging"),
  production("production");

  const EnvironmentKind(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentKind fromValue(String value) {
    for (final item in EnvironmentKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentKind value: $value');
  }
}

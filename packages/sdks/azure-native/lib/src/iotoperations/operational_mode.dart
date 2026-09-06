import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk persistence mode.
enum OperationalMode implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const OperationalMode(this.wireValue);
  @override
  final String wireValue;

  static OperationalMode fromValue(String value) {
    for (final item in OperationalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationalMode value: $value');
  }
}

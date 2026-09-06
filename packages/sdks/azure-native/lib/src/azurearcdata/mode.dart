import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of authentication in SqlServer.
enum Mode implements pulumi.PulumiEnum<String> {
  valueMixed("Mixed"),
  valueWindows("Windows"),
  valueUndefined("Undefined");

  const Mode(this.wireValue);
  @override
  final String wireValue;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}

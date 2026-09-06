import 'package:pulumi/pulumi.dart' as pulumi;

/// The verbosity of logs persisted on the connected registry.
enum LogLevel implements pulumi.PulumiEnum<String> {
  valueDebug("Debug"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error"),
  valueNone("None");

  const LogLevel(this.wireValue);
  @override
  final String wireValue;

  static LogLevel fromValue(String value) {
    for (final item in LogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogLevel value: $value');
  }
}

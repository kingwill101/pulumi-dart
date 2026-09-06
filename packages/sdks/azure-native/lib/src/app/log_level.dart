import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
enum LogLevel implements pulumi.PulumiEnum<String> {
  valueInfo("info"),
  valueDebug("debug"),
  valueWarn("warn"),
  valueError("error");

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

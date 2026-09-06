import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum LogsConfigStatusType implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const LogsConfigStatusType(this.wireValue);
  @override
  final String wireValue;

  static LogsConfigStatusType fromValue(String value) {
    for (final item in LogsConfigStatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsConfigStatusType value: $value');
  }
}

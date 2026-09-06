import 'package:pulumi/pulumi.dart' as pulumi;

/// Logger type.
enum LoggerType implements pulumi.PulumiEnum<String> {
  valueAzureEventHub("azureEventHub"),
  valueApplicationInsights("applicationInsights"),
  valueAzureMonitor("azureMonitor");

  const LoggerType(this.wireValue);
  @override
  final String wireValue;

  static LoggerType fromValue(String value) {
    for (final item in LoggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggerType value: $value');
  }
}

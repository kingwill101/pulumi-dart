import 'package:pulumi/pulumi.dart' as pulumi;

/// The log type to be used.
enum LogAnalyticsLogType implements pulumi.PulumiEnum<String> {
  valueContainerInsights("ContainerInsights"),
  valueContainerInstanceLogs("ContainerInstanceLogs");

  const LogAnalyticsLogType(this.wireValue);
  @override
  final String wireValue;

  static LogAnalyticsLogType fromValue(String value) {
    for (final item in LogAnalyticsLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogAnalyticsLogType value: $value');
  }
}

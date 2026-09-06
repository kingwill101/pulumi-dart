import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of signal to monitor.
enum MonitoringInputDataType implements pulumi.PulumiEnum<String> {
  static("Static"),
  rolling("Rolling"),
  fixed("Fixed");

  const MonitoringInputDataType(this.wireValue);
  @override
  final String wireValue;

  static MonitoringInputDataType fromValue(String value) {
    for (final item in MonitoringInputDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringInputDataType value: $value');
  }
}

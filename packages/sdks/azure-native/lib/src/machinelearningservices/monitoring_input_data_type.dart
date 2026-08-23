/// [Required] Specifies the type of signal to monitor.
enum MonitoringInputDataType {
  static("Static"),
  rolling("Rolling"),
  fixed("Fixed");

  const MonitoringInputDataType(this.wireValue);
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

/// [Required] Specifies the type of signal to monitor.
enum MonitoringInputDataType {
  valueStatic("Static"),
  valueRolling("Rolling"),
  valueFixed("Fixed");

  const MonitoringInputDataType(this.value);
  final String value;

  static MonitoringInputDataType fromValue(String value) {
    for (final item in MonitoringInputDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringInputDataType value: $value');
  }
}


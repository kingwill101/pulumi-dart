/// [Required] Specifies the type of signal to monitor.
enum MonitorComputeType {
  serverlessSpark("ServerlessSpark");

  const MonitorComputeType(this.wireValue);
  final String wireValue;

  static MonitorComputeType fromValue(String value) {
    for (final item in MonitorComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorComputeType value: $value');
  }
}

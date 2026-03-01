/// [Required] Specifies the type of signal to monitor.
enum MonitorComputeType {
  valueServerlessSpark("ServerlessSpark");

  const MonitorComputeType(this.value);
  final String value;

  static MonitorComputeType fromValue(String value) {
    for (final item in MonitorComputeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorComputeType value: $value');
  }
}


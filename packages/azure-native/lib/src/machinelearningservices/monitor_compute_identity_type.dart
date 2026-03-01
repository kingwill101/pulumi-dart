/// [Required] Specifies the type of identity to use within the monitoring jobs.
enum MonitorComputeIdentityType {
  valueAmlToken("AmlToken"),
  valueManagedIdentity("ManagedIdentity");

  const MonitorComputeIdentityType(this.value);
  final String value;

  static MonitorComputeIdentityType fromValue(String value) {
    for (final item in MonitorComputeIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorComputeIdentityType value: $value');
  }
}


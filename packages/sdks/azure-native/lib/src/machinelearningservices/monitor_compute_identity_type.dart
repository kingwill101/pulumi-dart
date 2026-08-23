/// [Required] Specifies the type of identity to use within the monitoring jobs.
enum MonitorComputeIdentityType {
  amlToken("AmlToken"),
  managedIdentity("ManagedIdentity");

  const MonitorComputeIdentityType(this.wireValue);
  final String wireValue;

  static MonitorComputeIdentityType fromValue(String value) {
    for (final item in MonitorComputeIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorComputeIdentityType value: $value');
  }
}

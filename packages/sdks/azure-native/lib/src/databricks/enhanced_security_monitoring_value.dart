enum EnhancedSecurityMonitoringValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnhancedSecurityMonitoringValue(this.wireValue);
  final String wireValue;

  static EnhancedSecurityMonitoringValue fromValue(String value) {
    for (final item in EnhancedSecurityMonitoringValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnhancedSecurityMonitoringValue value: $value');
  }
}


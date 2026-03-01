enum EnhancedSecurityMonitoringValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnhancedSecurityMonitoringValue(this.value);
  final String value;

  static EnhancedSecurityMonitoringValue fromValue(String value) {
    for (final item in EnhancedSecurityMonitoringValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnhancedSecurityMonitoringValue value: $value');
  }
}


enum ComplianceSecurityProfileValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ComplianceSecurityProfileValue(this.wireValue);
  final String wireValue;

  static ComplianceSecurityProfileValue fromValue(String value) {
    for (final item in ComplianceSecurityProfileValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceSecurityProfileValue value: $value');
  }
}


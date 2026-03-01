enum ComplianceSecurityProfileValue {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ComplianceSecurityProfileValue(this.value);
  final String value;

  static ComplianceSecurityProfileValue fromValue(String value) {
    for (final item in ComplianceSecurityProfileValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceSecurityProfileValue value: $value');
  }
}


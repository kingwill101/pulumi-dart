enum InstanceSuspensionReasonItem {
  sqlSuspensionReasonUnspecified("SQL_SUSPENSION_REASON_UNSPECIFIED"),
  billingIssue("BILLING_ISSUE"),
  legalIssue("LEGAL_ISSUE"),
  operationalIssue("OPERATIONAL_ISSUE"),
  kmsKeyIssue("KMS_KEY_ISSUE");

  const InstanceSuspensionReasonItem(this.value);
  final String value;

  static InstanceSuspensionReasonItem fromValue(String value) {
    for (final item in InstanceSuspensionReasonItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonItem value: $value');
  }
}


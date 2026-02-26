enum InstanceSuspensionReasonItem2 {
  sqlSuspensionReasonUnspecified("SQL_SUSPENSION_REASON_UNSPECIFIED"),
  billingIssue("BILLING_ISSUE"),
  legalIssue("LEGAL_ISSUE"),
  operationalIssue("OPERATIONAL_ISSUE"),
  kmsKeyIssue("KMS_KEY_ISSUE");

  const InstanceSuspensionReasonItem2(this.value);
  final String value;

  static InstanceSuspensionReasonItem2 fromValue(String value) {
    for (final item in InstanceSuspensionReasonItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonItem2 value: $value');
  }
}

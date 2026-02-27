enum InstanceSuspensionReasonItemSqladminV1beta4 {
  sqlSuspensionReasonUnspecified("SQL_SUSPENSION_REASON_UNSPECIFIED"),
  billingIssue("BILLING_ISSUE"),
  legalIssue("LEGAL_ISSUE"),
  operationalIssue("OPERATIONAL_ISSUE"),
  kmsKeyIssue("KMS_KEY_ISSUE");

  const InstanceSuspensionReasonItemSqladminV1beta4(this.value);
  final String value;

  static InstanceSuspensionReasonItemSqladminV1beta4 fromValue(String value) {
    for (final item in InstanceSuspensionReasonItemSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceSuspensionReasonItemSqladminV1beta4 value: $value');
  }
}

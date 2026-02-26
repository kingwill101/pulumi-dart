enum InstanceSuspensionReasonsItem2 {
  suspensionReasonUnspecified("SUSPENSION_REASON_UNSPECIFIED"),
  customerManagedKeyIssue("CUSTOMER_MANAGED_KEY_ISSUE");

  const InstanceSuspensionReasonsItem2(this.value);
  final String value;

  static InstanceSuspensionReasonsItem2 fromValue(String value) {
    for (final item in InstanceSuspensionReasonsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonsItem2 value: $value');
  }
}

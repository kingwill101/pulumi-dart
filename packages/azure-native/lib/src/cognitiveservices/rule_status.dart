/// Type of a managed network Outbound Rule of a cognitive services account.
enum RuleStatus {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueProvisioning("Provisioning"),
  valueDeleting("Deleting"),
  valueFailed("Failed");

  const RuleStatus(this.value);
  final String value;

  static RuleStatus fromValue(String value) {
    for (final item in RuleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleStatus value: $value');
  }
}


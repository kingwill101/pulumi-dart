/// Type of a managed network Outbound Rule of a machine learning workspace.
enum RuleStatus {
  valueInactive("Inactive"),
  valueActive("Active"),
  valueProvisioning("Provisioning"),
  valueDeleting("Deleting"),
  valueFailed("Failed");

  const RuleStatus(this.wireValue);
  final String wireValue;

  static RuleStatus fromValue(String value) {
    for (final item in RuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleStatus value: $value');
  }
}


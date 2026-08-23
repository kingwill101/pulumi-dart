/// Type of a managed network Outbound Rule of a cognitive services account.
enum RuleStatus {
  inactive("Inactive"),
  active("Active"),
  provisioning("Provisioning"),
  deleting("Deleting"),
  failed("Failed");

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

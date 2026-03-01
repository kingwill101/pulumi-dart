enum BudgetOwnershipScope {
  ownershipScopeUnspecified("OWNERSHIP_SCOPE_UNSPECIFIED"),
  allUsers("ALL_USERS"),
  billingAccount("BILLING_ACCOUNT");

  const BudgetOwnershipScope(this.value);
  final String value;

  static BudgetOwnershipScope fromValue(String value) {
    for (final item in BudgetOwnershipScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOwnershipScope value: $value');
  }
}

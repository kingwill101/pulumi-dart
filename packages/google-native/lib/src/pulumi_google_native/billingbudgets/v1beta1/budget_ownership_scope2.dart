enum BudgetOwnershipScope2 {
  ownershipScopeUnspecified("OWNERSHIP_SCOPE_UNSPECIFIED"),
  allUsers("ALL_USERS"),
  billingAccount("BILLING_ACCOUNT");

  const BudgetOwnershipScope2(this.value);
  final String value;

  static BudgetOwnershipScope2 fromValue(String value) {
    for (final item in BudgetOwnershipScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetOwnershipScope2 value: $value');
  }
}

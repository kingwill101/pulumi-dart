/// The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
enum BillingManagementTenantState {
  valueOther("Other"),
  valueNotAllowed("NotAllowed"),
  valueActive("Active"),
  valueRevoked("Revoked");

  const BillingManagementTenantState(this.value);
  final String value;

  static BillingManagementTenantState fromValue(String value) {
    for (final item in BillingManagementTenantState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingManagementTenantState value: $value');
  }
}


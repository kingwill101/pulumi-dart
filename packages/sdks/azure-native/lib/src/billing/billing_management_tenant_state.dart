/// The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
enum BillingManagementTenantState {
  other("Other"),
  notAllowed("NotAllowed"),
  active("Active"),
  revoked("Revoked");

  const BillingManagementTenantState(this.wireValue);
  final String wireValue;

  static BillingManagementTenantState fromValue(String value) {
    for (final item in BillingManagementTenantState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingManagementTenantState value: $value');
  }
}

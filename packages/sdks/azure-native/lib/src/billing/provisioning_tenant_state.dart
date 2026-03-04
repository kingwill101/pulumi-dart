/// The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
enum ProvisioningTenantState {
  valueOther("Other"),
  valueNotRequested("NotRequested"),
  valueActive("Active"),
  valuePending("Pending"),
  valueBillingRequestExpired("BillingRequestExpired"),
  valueBillingRequestDeclined("BillingRequestDeclined"),
  valueRevoked("Revoked");

  const ProvisioningTenantState(this.wireValue);
  final String wireValue;

  static ProvisioningTenantState fromValue(String value) {
    for (final item in ProvisioningTenantState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningTenantState value: $value');
  }
}

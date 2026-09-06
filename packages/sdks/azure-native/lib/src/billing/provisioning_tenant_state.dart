import 'package:pulumi/pulumi.dart' as pulumi;

/// The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
enum ProvisioningTenantState implements pulumi.PulumiEnum<String> {
  other("Other"),
  notRequested("NotRequested"),
  active("Active"),
  pending("Pending"),
  billingRequestExpired("BillingRequestExpired"),
  billingRequestDeclined("BillingRequestDeclined"),
  revoked("Revoked");

  const ProvisioningTenantState(this.wireValue);
  @override
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

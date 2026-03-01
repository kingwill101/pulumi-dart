// ignore_for_file: unused_element, unnecessary_cast


/// An associated tenant.
class AssociatedTenantProperties {
  /// The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
  final String? billingManagementState;
  /// The name of the associated tenant.
  final String? displayName;
  /// The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
  final String? provisioningManagementState;
  /// The ID that uniquely identifies a tenant.
  final String? tenantId;

  /// Creates a new [AssociatedTenantProperties].
  /// [billingManagementState] The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
  /// [displayName] The name of the associated tenant.
  /// [provisioningManagementState] The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
  /// [tenantId] The ID that uniquely identifies a tenant.
  AssociatedTenantProperties({
    this.billingManagementState,
    this.displayName,
    this.provisioningManagementState,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingManagementState': ?billingManagementState,
      'displayName': ?displayName,
      'provisioningManagementState': ?provisioningManagementState,
      'tenantId': ?tenantId,
    };
  }

  factory AssociatedTenantProperties.fromMap(Map<String, dynamic> map) {
    return AssociatedTenantProperties(
      billingManagementState: map['billingManagementState'] == null ? null : map['billingManagementState'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      provisioningManagementState: map['provisioningManagementState'] == null ? null : map['provisioningManagementState'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}


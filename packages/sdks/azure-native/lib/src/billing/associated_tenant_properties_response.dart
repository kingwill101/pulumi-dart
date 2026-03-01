// ignore_for_file: unused_element, unnecessary_cast


/// An associated tenant.
class AssociatedTenantPropertiesResponse {
  /// The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
  final String? billingManagementState;
  /// The name of the associated tenant.
  final String? displayName;
  /// The unique identifier for the billing request that is created when enabling provisioning for an associated tenant.
  final String provisioningBillingRequestId;
  /// The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
  final String? provisioningManagementState;
  /// The provisioning state of the resource during a long-running operation.
  final String provisioningState;
  /// The ID that uniquely identifies a tenant.
  final String? tenantId;

  /// Creates a new [AssociatedTenantPropertiesResponse].
  /// [billingManagementState] The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
  /// [displayName] The name of the associated tenant.
  /// [provisioningBillingRequestId] The unique identifier for the billing request that is created when enabling provisioning for an associated tenant.
  /// [provisioningManagementState] The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
  /// [provisioningState] The provisioning state of the resource during a long-running operation.
  /// [tenantId] The ID that uniquely identifies a tenant.
  AssociatedTenantPropertiesResponse({
    this.billingManagementState,
    this.displayName,
    required this.provisioningBillingRequestId,
    this.provisioningManagementState,
    required this.provisioningState,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingManagementState': ?billingManagementState,
      'displayName': ?displayName,
      'provisioningBillingRequestId': provisioningBillingRequestId,
      'provisioningManagementState': ?provisioningManagementState,
      'provisioningState': provisioningState,
      'tenantId': ?tenantId,
    };
  }

  factory AssociatedTenantPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AssociatedTenantPropertiesResponse(
      billingManagementState: map['billingManagementState'] == null ? null : map['billingManagementState'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      provisioningBillingRequestId: map['provisioningBillingRequestId'] as String,
      provisioningManagementState: map['provisioningManagementState'] == null ? null : map['provisioningManagementState'] as String,
      provisioningState: map['provisioningState'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}


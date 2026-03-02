// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An associated tenant.
class AssociatedTenantPropertiesResponse {
  /// The state determines whether users from the associated tenant can be assigned roles for commerce activities like viewing and downloading invoices, managing payments, and making purchases.
  final pulumi.Input<String>? billingManagementState;
  /// The name of the associated tenant.
  final pulumi.Input<String>? displayName;
  /// The unique identifier for the billing request that is created when enabling provisioning for an associated tenant.
  final pulumi.Input<String> provisioningBillingRequestId;
  /// The state determines whether subscriptions and licenses can be provisioned in the associated tenant. It can be set to 'Pending' to initiate a billing request.
  final pulumi.Input<String>? provisioningManagementState;
  /// The provisioning state of the resource during a long-running operation.
  final pulumi.Input<String> provisioningState;
  /// The ID that uniquely identifies a tenant.
  final pulumi.Input<String>? tenantId;

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
      billingManagementState: map['billingManagementState'] == null ? null : (map['billingManagementState'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      provisioningBillingRequestId: (map['provisioningBillingRequestId'] as String).input(),
      provisioningManagementState: map['provisioningManagementState'] == null ? null : (map['provisioningManagementState'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}


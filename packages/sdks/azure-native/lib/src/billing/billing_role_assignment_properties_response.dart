// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the billing role assignment.
class BillingRoleAssignmentPropertiesResponse {
  /// The name of the billing account.
  final pulumi.Input<String> billingAccountDisplayName;
  /// The fully qualified ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountId;
  /// The name of the billing profile.
  final pulumi.Input<String> billingProfileDisplayName;
  /// The fully qualified ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileId;
  /// The ID of the billing request that was created for the role assignment. This is only applicable to cross tenant role assignments or role assignments created through the billing request.
  final pulumi.Input<String> billingRequestId;
  /// The object ID of the user who created the role assignment.
  final pulumi.Input<String> createdByPrincipalId;
  /// The principal PUID of the user who created the role assignment.
  final pulumi.Input<String> createdByPrincipalPuid;
  /// The tenant Id of the user who created the role assignment.
  final pulumi.Input<String> createdByPrincipalTenantId;
  /// The email address of the user who created the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String> createdByUserEmailAddress;
  /// The date the role assignment was created.
  final pulumi.Input<String> createdOn;
  /// The name of the customer.
  final pulumi.Input<String> customerDisplayName;
  /// The fully qualified ID that uniquely identifies a customer.
  final pulumi.Input<String> customerId;
  /// The name of the invoice section.
  final pulumi.Input<String> invoiceSectionDisplayName;
  /// The fully qualified ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionId;
  /// The principal PUID of the user who modified the role assignment.
  final pulumi.Input<String> modifiedByPrincipalId;
  /// The principal PUID of the user who modified the role assignment.
  final pulumi.Input<String> modifiedByPrincipalPuid;
  /// The tenant Id of the user who modified the role assignment.
  final pulumi.Input<String> modifiedByPrincipalTenantId;
  /// The email address of the user who modified the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String> modifiedByUserEmailAddress;
  /// The date the role assignment was modified.
  final pulumi.Input<String> modifiedOn;
  /// The display name of the principal to whom the role was assigned.
  final pulumi.Input<String> principalDisplayName;
  /// The object id of the user to whom the role was assigned.
  final pulumi.Input<String>? principalId;
  /// The principal PUID of the user to whom the role was assigned.
  final pulumi.Input<String>? principalPuid;
  /// The principal tenant id of the user to whom the role was assigned.
  final pulumi.Input<String>? principalTenantId;
  /// The friendly name of the tenant of the user to whom the role was assigned. This will be 'Primary Tenant' for the primary tenant of the billing account.
  final pulumi.Input<String> principalTenantName;
  /// The type of a role Assignment.
  final pulumi.Input<String> principalType;
  /// The provisioning state of the resource during a long-running operation.
  final pulumi.Input<String> provisioningState;
  /// The ID of the role definition.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope at which the role was assigned.
  final pulumi.Input<String>? scope;
  /// The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String>? userAuthenticationType;
  /// The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String>? userEmailAddress;

  /// Creates a new [BillingRoleAssignmentPropertiesResponse].
  /// [billingAccountDisplayName] The name of the billing account.
  /// [billingAccountId] The fully qualified ID that uniquely identifies a billing account.
  /// [billingProfileDisplayName] The name of the billing profile.
  /// [billingProfileId] The fully qualified ID that uniquely identifies a billing profile.
  /// [billingRequestId] The ID of the billing request that was created for the role assignment. This is only applicable to cross tenant role assignments or role assignments created through the billing request.
  /// [createdByPrincipalId] The object ID of the user who created the role assignment.
  /// [createdByPrincipalPuid] The principal PUID of the user who created the role assignment.
  /// [createdByPrincipalTenantId] The tenant Id of the user who created the role assignment.
  /// [createdByUserEmailAddress] The email address of the user who created the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  /// [createdOn] The date the role assignment was created.
  /// [customerDisplayName] The name of the customer.
  /// [customerId] The fully qualified ID that uniquely identifies a customer.
  /// [invoiceSectionDisplayName] The name of the invoice section.
  /// [invoiceSectionId] The fully qualified ID that uniquely identifies an invoice section.
  /// [modifiedByPrincipalId] The principal PUID of the user who modified the role assignment.
  /// [modifiedByPrincipalPuid] The principal PUID of the user who modified the role assignment.
  /// [modifiedByPrincipalTenantId] The tenant Id of the user who modified the role assignment.
  /// [modifiedByUserEmailAddress] The email address of the user who modified the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  /// [modifiedOn] The date the role assignment was modified.
  /// [principalDisplayName] The display name of the principal to whom the role was assigned.
  /// [principalId] The object id of the user to whom the role was assigned.
  /// [principalPuid] The principal PUID of the user to whom the role was assigned.
  /// [principalTenantId] The principal tenant id of the user to whom the role was assigned.
  /// [principalTenantName] The friendly name of the tenant of the user to whom the role was assigned. This will be 'Primary Tenant' for the primary tenant of the billing account.
  /// [principalType] The type of a role Assignment.
  /// [provisioningState] The provisioning state of the resource during a long-running operation.
  /// [roleDefinitionId] The ID of the role definition.
  /// [scope] The scope at which the role was assigned.
  /// [userAuthenticationType] The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  /// [userEmailAddress] The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  BillingRoleAssignmentPropertiesResponse({
    required this.billingAccountDisplayName,
    required this.billingAccountId,
    required this.billingProfileDisplayName,
    required this.billingProfileId,
    required this.billingRequestId,
    required this.createdByPrincipalId,
    required this.createdByPrincipalPuid,
    required this.createdByPrincipalTenantId,
    required this.createdByUserEmailAddress,
    required this.createdOn,
    required this.customerDisplayName,
    required this.customerId,
    required this.invoiceSectionDisplayName,
    required this.invoiceSectionId,
    required this.modifiedByPrincipalId,
    required this.modifiedByPrincipalPuid,
    required this.modifiedByPrincipalTenantId,
    required this.modifiedByUserEmailAddress,
    required this.modifiedOn,
    required this.principalDisplayName,
    this.principalId,
    this.principalPuid,
    this.principalTenantId,
    required this.principalTenantName,
    required this.principalType,
    required this.provisioningState,
    required this.roleDefinitionId,
    this.scope,
    this.userAuthenticationType,
    this.userEmailAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountDisplayName': billingAccountDisplayName,
      'billingAccountId': billingAccountId,
      'billingProfileDisplayName': billingProfileDisplayName,
      'billingProfileId': billingProfileId,
      'billingRequestId': billingRequestId,
      'createdByPrincipalId': createdByPrincipalId,
      'createdByPrincipalPuid': createdByPrincipalPuid,
      'createdByPrincipalTenantId': createdByPrincipalTenantId,
      'createdByUserEmailAddress': createdByUserEmailAddress,
      'createdOn': createdOn,
      'customerDisplayName': customerDisplayName,
      'customerId': customerId,
      'invoiceSectionDisplayName': invoiceSectionDisplayName,
      'invoiceSectionId': invoiceSectionId,
      'modifiedByPrincipalId': modifiedByPrincipalId,
      'modifiedByPrincipalPuid': modifiedByPrincipalPuid,
      'modifiedByPrincipalTenantId': modifiedByPrincipalTenantId,
      'modifiedByUserEmailAddress': modifiedByUserEmailAddress,
      'modifiedOn': modifiedOn,
      'principalDisplayName': principalDisplayName,
      'principalId': ?principalId,
      'principalPuid': ?principalPuid,
      'principalTenantId': ?principalTenantId,
      'principalTenantName': principalTenantName,
      'principalType': principalType,
      'provisioningState': provisioningState,
      'roleDefinitionId': roleDefinitionId,
      'scope': ?scope,
      'userAuthenticationType': ?userAuthenticationType,
      'userEmailAddress': ?userEmailAddress,
    };
  }

  factory BillingRoleAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BillingRoleAssignmentPropertiesResponse(
      billingAccountDisplayName: (map['billingAccountDisplayName'] as String).input(),
      billingAccountId: (map['billingAccountId'] as String).input(),
      billingProfileDisplayName: (map['billingProfileDisplayName'] as String).input(),
      billingProfileId: (map['billingProfileId'] as String).input(),
      billingRequestId: (map['billingRequestId'] as String).input(),
      createdByPrincipalId: (map['createdByPrincipalId'] as String).input(),
      createdByPrincipalPuid: (map['createdByPrincipalPuid'] as String).input(),
      createdByPrincipalTenantId: (map['createdByPrincipalTenantId'] as String).input(),
      createdByUserEmailAddress: (map['createdByUserEmailAddress'] as String).input(),
      createdOn: (map['createdOn'] as String).input(),
      customerDisplayName: (map['customerDisplayName'] as String).input(),
      customerId: (map['customerId'] as String).input(),
      invoiceSectionDisplayName: (map['invoiceSectionDisplayName'] as String).input(),
      invoiceSectionId: (map['invoiceSectionId'] as String).input(),
      modifiedByPrincipalId: (map['modifiedByPrincipalId'] as String).input(),
      modifiedByPrincipalPuid: (map['modifiedByPrincipalPuid'] as String).input(),
      modifiedByPrincipalTenantId: (map['modifiedByPrincipalTenantId'] as String).input(),
      modifiedByUserEmailAddress: (map['modifiedByUserEmailAddress'] as String).input(),
      modifiedOn: (map['modifiedOn'] as String).input(),
      principalDisplayName: (map['principalDisplayName'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      principalPuid: map['principalPuid'] == null ? null : (map['principalPuid']! as String).input(),
      principalTenantId: map['principalTenantId'] == null ? null : (map['principalTenantId']! as String).input(),
      principalTenantName: (map['principalTenantName'] as String).input(),
      principalType: (map['principalType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      userAuthenticationType: map['userAuthenticationType'] == null ? null : (map['userAuthenticationType']! as String).input(),
      userEmailAddress: map['userEmailAddress'] == null ? null : (map['userEmailAddress']! as String).input(),
    );
  }
}


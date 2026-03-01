// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the billing role assignment.
class BillingRoleAssignmentPropertiesResponse {
  /// The name of the billing account.
  final String billingAccountDisplayName;
  /// The fully qualified ID that uniquely identifies a billing account.
  final String billingAccountId;
  /// The name of the billing profile.
  final String billingProfileDisplayName;
  /// The fully qualified ID that uniquely identifies a billing profile.
  final String billingProfileId;
  /// The ID of the billing request that was created for the role assignment. This is only applicable to cross tenant role assignments or role assignments created through the billing request.
  final String billingRequestId;
  /// The object ID of the user who created the role assignment.
  final String createdByPrincipalId;
  /// The principal PUID of the user who created the role assignment.
  final String createdByPrincipalPuid;
  /// The tenant Id of the user who created the role assignment.
  final String createdByPrincipalTenantId;
  /// The email address of the user who created the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final String createdByUserEmailAddress;
  /// The date the role assignment was created.
  final String createdOn;
  /// The name of the customer.
  final String customerDisplayName;
  /// The fully qualified ID that uniquely identifies a customer.
  final String customerId;
  /// The name of the invoice section.
  final String invoiceSectionDisplayName;
  /// The fully qualified ID that uniquely identifies an invoice section.
  final String invoiceSectionId;
  /// The principal PUID of the user who modified the role assignment.
  final String modifiedByPrincipalId;
  /// The principal PUID of the user who modified the role assignment.
  final String modifiedByPrincipalPuid;
  /// The tenant Id of the user who modified the role assignment.
  final String modifiedByPrincipalTenantId;
  /// The email address of the user who modified the role assignment. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final String modifiedByUserEmailAddress;
  /// The date the role assignment was modified.
  final String modifiedOn;
  /// The display name of the principal to whom the role was assigned.
  final String principalDisplayName;
  /// The object id of the user to whom the role was assigned.
  final String? principalId;
  /// The principal PUID of the user to whom the role was assigned.
  final String? principalPuid;
  /// The principal tenant id of the user to whom the role was assigned.
  final String? principalTenantId;
  /// The friendly name of the tenant of the user to whom the role was assigned. This will be 'Primary Tenant' for the primary tenant of the billing account.
  final String principalTenantName;
  /// The type of a role Assignment.
  final String principalType;
  /// The provisioning state of the resource during a long-running operation.
  final String provisioningState;
  /// The ID of the role definition.
  final String roleDefinitionId;
  /// The scope at which the role was assigned.
  final String? scope;
  /// The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final String? userAuthenticationType;
  /// The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final String? userEmailAddress;

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
      billingAccountDisplayName: map['billingAccountDisplayName'] as String,
      billingAccountId: map['billingAccountId'] as String,
      billingProfileDisplayName: map['billingProfileDisplayName'] as String,
      billingProfileId: map['billingProfileId'] as String,
      billingRequestId: map['billingRequestId'] as String,
      createdByPrincipalId: map['createdByPrincipalId'] as String,
      createdByPrincipalPuid: map['createdByPrincipalPuid'] as String,
      createdByPrincipalTenantId: map['createdByPrincipalTenantId'] as String,
      createdByUserEmailAddress: map['createdByUserEmailAddress'] as String,
      createdOn: map['createdOn'] as String,
      customerDisplayName: map['customerDisplayName'] as String,
      customerId: map['customerId'] as String,
      invoiceSectionDisplayName: map['invoiceSectionDisplayName'] as String,
      invoiceSectionId: map['invoiceSectionId'] as String,
      modifiedByPrincipalId: map['modifiedByPrincipalId'] as String,
      modifiedByPrincipalPuid: map['modifiedByPrincipalPuid'] as String,
      modifiedByPrincipalTenantId: map['modifiedByPrincipalTenantId'] as String,
      modifiedByUserEmailAddress: map['modifiedByUserEmailAddress'] as String,
      modifiedOn: map['modifiedOn'] as String,
      principalDisplayName: map['principalDisplayName'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      principalPuid: map['principalPuid'] == null ? null : map['principalPuid'] as String,
      principalTenantId: map['principalTenantId'] == null ? null : map['principalTenantId'] as String,
      principalTenantName: map['principalTenantName'] as String,
      principalType: map['principalType'] as String,
      provisioningState: map['provisioningState'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      userAuthenticationType: map['userAuthenticationType'] == null ? null : map['userAuthenticationType'] as String,
      userEmailAddress: map['userEmailAddress'] == null ? null : map['userEmailAddress'] as String,
    );
  }
}


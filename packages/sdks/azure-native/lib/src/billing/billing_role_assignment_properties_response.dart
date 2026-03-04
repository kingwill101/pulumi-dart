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

  factory BillingRoleAssignmentPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BillingRoleAssignmentPropertiesResponse(
      billingAccountDisplayName: pulumi.Input.fromValue(
        map['billingAccountDisplayName'] as String,
      ),
      billingAccountId: pulumi.Input.fromValue(
        map['billingAccountId'] as String,
      ),
      billingProfileDisplayName: pulumi.Input.fromValue(
        map['billingProfileDisplayName'] as String,
      ),
      billingProfileId: pulumi.Input.fromValue(
        map['billingProfileId'] as String,
      ),
      billingRequestId: pulumi.Input.fromValue(
        map['billingRequestId'] as String,
      ),
      createdByPrincipalId: pulumi.Input.fromValue(
        map['createdByPrincipalId'] as String,
      ),
      createdByPrincipalPuid: pulumi.Input.fromValue(
        map['createdByPrincipalPuid'] as String,
      ),
      createdByPrincipalTenantId: pulumi.Input.fromValue(
        map['createdByPrincipalTenantId'] as String,
      ),
      createdByUserEmailAddress: pulumi.Input.fromValue(
        map['createdByUserEmailAddress'] as String,
      ),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      customerDisplayName: pulumi.Input.fromValue(
        map['customerDisplayName'] as String,
      ),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      invoiceSectionDisplayName: pulumi.Input.fromValue(
        map['invoiceSectionDisplayName'] as String,
      ),
      invoiceSectionId: pulumi.Input.fromValue(
        map['invoiceSectionId'] as String,
      ),
      modifiedByPrincipalId: pulumi.Input.fromValue(
        map['modifiedByPrincipalId'] as String,
      ),
      modifiedByPrincipalPuid: pulumi.Input.fromValue(
        map['modifiedByPrincipalPuid'] as String,
      ),
      modifiedByPrincipalTenantId: pulumi.Input.fromValue(
        map['modifiedByPrincipalTenantId'] as String,
      ),
      modifiedByUserEmailAddress: pulumi.Input.fromValue(
        map['modifiedByUserEmailAddress'] as String,
      ),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      principalDisplayName: pulumi.Input.fromValue(
        map['principalDisplayName'] as String,
      ),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalPuid: (() {
        final guardedValue = map['principalPuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalTenantId: (() {
        final guardedValue = map['principalTenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalTenantName: pulumi.Input.fromValue(
        map['principalTenantName'] as String,
      ),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      roleDefinitionId: pulumi.Input.fromValue(
        map['roleDefinitionId'] as String,
      ),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAuthenticationType: (() {
        final guardedValue = map['userAuthenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userEmailAddress: (() {
        final guardedValue = map['userEmailAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

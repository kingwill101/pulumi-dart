// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the billing role assignment.
class BillingRoleAssignmentProperties {
  /// The object id of the user to whom the role was assigned.
  final pulumi.Input<String>? principalId;
  /// The principal PUID of the user to whom the role was assigned.
  final pulumi.Input<String>? principalPuid;
  /// The principal tenant id of the user to whom the role was assigned.
  final pulumi.Input<String>? principalTenantId;
  /// The ID of the role definition.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope at which the role was assigned.
  final pulumi.Input<String>? scope;
  /// The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String>? userAuthenticationType;
  /// The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  final pulumi.Input<String>? userEmailAddress;

  /// Creates a new [BillingRoleAssignmentProperties].
  /// [principalId] The object id of the user to whom the role was assigned.
  /// [principalPuid] The principal PUID of the user to whom the role was assigned.
  /// [principalTenantId] The principal tenant id of the user to whom the role was assigned.
  /// [roleDefinitionId] The ID of the role definition.
  /// [scope] The scope at which the role was assigned.
  /// [userAuthenticationType] The authentication type of the user, whether Organization or MSA, of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  /// [userEmailAddress] The email address of the user to whom the role was assigned. This is supported only for billing accounts with agreement type Enterprise Agreement.
  BillingRoleAssignmentProperties({
    this.principalId,
    this.principalPuid,
    this.principalTenantId,
    required this.roleDefinitionId,
    this.scope,
    this.userAuthenticationType,
    this.userEmailAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'principalPuid': ?principalPuid,
      'principalTenantId': ?principalTenantId,
      'roleDefinitionId': roleDefinitionId,
      'scope': ?scope,
      'userAuthenticationType': ?userAuthenticationType,
      'userEmailAddress': ?userEmailAddress,
    };
  }

  factory BillingRoleAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return BillingRoleAssignmentProperties(
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      principalPuid: map['principalPuid'] == null ? null : (map['principalPuid'] as String).input(),
      principalTenantId: map['principalTenantId'] == null ? null : (map['principalTenantId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      userAuthenticationType: map['userAuthenticationType'] == null ? null : (map['userAuthenticationType'] as String).input(),
      userEmailAddress: map['userEmailAddress'] == null ? null : (map['userEmailAddress'] as String).input(),
    );
  }
}


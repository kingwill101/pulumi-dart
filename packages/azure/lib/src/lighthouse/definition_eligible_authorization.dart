// ignore_for_file: unused_element, unnecessary_cast

import 'definition_eligible_authorization_just_in_time_access_policy.dart';

class DefinitionEligibleAuthorization {
  /// A `just_in_time_access_policy` block as defined below.
  final DefinitionEligibleAuthorizationJustInTimeAccessPolicy? justInTimeAccessPolicy;
  /// The display name of the Azure Active Directory Principal.
  final String? principalDisplayName;
  /// Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final String principalId;
  /// The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope.
  final String roleDefinitionId;

  /// Creates a new [DefinitionEligibleAuthorization].
  /// [justInTimeAccessPolicy] A `just_in_time_access_policy` block as defined below.
  /// [principalDisplayName] The display name of the Azure Active Directory Principal.
  /// [principalId] Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [roleDefinitionId] The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope.
  DefinitionEligibleAuthorization({
    this.justInTimeAccessPolicy,
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justInTimeAccessPolicy': ?justInTimeAccessPolicy == null ? null : justInTimeAccessPolicy!.toMap(),
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory DefinitionEligibleAuthorization.fromMap(Map<String, dynamic> map) {
    return DefinitionEligibleAuthorization(
      justInTimeAccessPolicy: map['justInTimeAccessPolicy'] == null ? null : DefinitionEligibleAuthorizationJustInTimeAccessPolicy.fromMap((map['justInTimeAccessPolicy'] as Map).cast<String, dynamic>()),
      principalDisplayName: map['principalDisplayName'] == null ? null : map['principalDisplayName'] as String,
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}


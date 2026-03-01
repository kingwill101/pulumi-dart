// ignore_for_file: unused_element, unnecessary_cast

import 'just_in_time_access_policy_response.dart';

/// The Azure Active Directory principal identifier, Azure built-in role, and just-in-time access policy that describes the just-in-time access the principal will receive on the delegated resource in the managed tenant.
class EligibleAuthorizationResponse {
  /// The just-in-time access policy setting.
  final JustInTimeAccessPolicyResponse? justInTimeAccessPolicy;
  /// The identifier of the Azure Active Directory principal.
  final String principalId;
  /// The display name of the Azure Active Directory principal.
  final String? principalIdDisplayName;
  /// The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  final String roleDefinitionId;

  /// Creates a new [EligibleAuthorizationResponse].
  /// [justInTimeAccessPolicy] The just-in-time access policy setting.
  /// [principalId] The identifier of the Azure Active Directory principal.
  /// [principalIdDisplayName] The display name of the Azure Active Directory principal.
  /// [roleDefinitionId] The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  EligibleAuthorizationResponse({
    this.justInTimeAccessPolicy,
    required this.principalId,
    this.principalIdDisplayName,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justInTimeAccessPolicy': ?justInTimeAccessPolicy == null ? null : justInTimeAccessPolicy!.toMap(),
      'principalId': principalId,
      'principalIdDisplayName': ?principalIdDisplayName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory EligibleAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return EligibleAuthorizationResponse(
      justInTimeAccessPolicy: map['justInTimeAccessPolicy'] == null ? null : JustInTimeAccessPolicyResponse.fromMap((map['justInTimeAccessPolicy'] as Map).cast<String, dynamic>()),
      principalId: map['principalId'] as String,
      principalIdDisplayName: map['principalIdDisplayName'] == null ? null : map['principalIdDisplayName'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}


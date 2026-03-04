// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'just_in_time_access_policy_response.dart';

/// The Azure Active Directory principal identifier, Azure built-in role, and just-in-time access policy that describes the just-in-time access the principal will receive on the delegated resource in the managed tenant.
class EligibleAuthorizationResponse {
  /// The just-in-time access policy setting.
  final pulumi.Input<JustInTimeAccessPolicyResponse>? justInTimeAccessPolicy;

  /// The identifier of the Azure Active Directory principal.
  final pulumi.Input<String> principalId;

  /// The display name of the Azure Active Directory principal.
  final pulumi.Input<String>? principalIdDisplayName;

  /// The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  final pulumi.Input<String> roleDefinitionId;

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
      'justInTimeAccessPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            JustInTimeAccessPolicyResponse,
            Map<String, dynamic>
          >(justInTimeAccessPolicy, (value) => value.toMap()),
      'principalId': principalId,
      'principalIdDisplayName': ?principalIdDisplayName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory EligibleAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return EligibleAuthorizationResponse(
      justInTimeAccessPolicy: (() {
        final guardedValue = map['justInTimeAccessPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JustInTimeAccessPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalIdDisplayName: (() {
        final guardedValue = map['principalIdDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: pulumi.Input.fromValue(
        map['roleDefinitionId'] as String,
      ),
    );
  }
}

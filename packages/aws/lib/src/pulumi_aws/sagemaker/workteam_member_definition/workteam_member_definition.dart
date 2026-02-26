// ignore_for_file: unused_element, unnecessary_cast

import '../workteam_member_definition_cognito_member_definition/workteam_member_definition_cognito_member_definition.dart';
import '../workteam_member_definition_oidc_member_definition/workteam_member_definition_oidc_member_definition.dart';

class WorkteamMemberDefinition {
  /// The Amazon Cognito user group that is part of the work team. See Cognito Member Definition details below.
  final WorkteamMemberDefinitionCognitoMemberDefinition?
      cognitoMemberDefinition;

  /// A list user groups that exist in your OIDC Identity Provider (IdP). One to ten groups can be used to create a single private work team. See Cognito Member Definition details below.
  final WorkteamMemberDefinitionOidcMemberDefinition? oidcMemberDefinition;

  WorkteamMemberDefinition({
    this.cognitoMemberDefinition,
    this.oidcMemberDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cognitoMemberDefinitionValue = cognitoMemberDefinition;
    if (cognitoMemberDefinitionValue != null) {
      map['cognitoMemberDefinition'] = cognitoMemberDefinitionValue.toMap();
    }
    final oidcMemberDefinitionValue = oidcMemberDefinition;
    if (oidcMemberDefinitionValue != null) {
      map['oidcMemberDefinition'] = oidcMemberDefinitionValue.toMap();
    }
    return map;
  }

  factory WorkteamMemberDefinition.fromMap(Map<String, dynamic> map) {
    return WorkteamMemberDefinition(
      cognitoMemberDefinition: map['cognitoMemberDefinition'] == null
          ? null
          : WorkteamMemberDefinitionCognitoMemberDefinition.fromMap(
              (map['cognitoMemberDefinition'] as Map).cast<String, dynamic>()),
      oidcMemberDefinition: map['oidcMemberDefinition'] == null
          ? null
          : WorkteamMemberDefinitionOidcMemberDefinition.fromMap(
              (map['oidcMemberDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

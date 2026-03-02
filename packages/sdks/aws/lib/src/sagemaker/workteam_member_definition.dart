// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workteam_member_definition_cognito_member_definition.dart';
import 'workteam_member_definition_oidc_member_definition.dart';

class WorkteamMemberDefinition {
  /// The Amazon Cognito user group that is part of the work team. See Cognito Member Definition details below.
  final pulumi.Input<WorkteamMemberDefinitionCognitoMemberDefinition>? cognitoMemberDefinition;
  /// A list user groups that exist in your OIDC Identity Provider (IdP). One to ten groups can be used to create a single private work team. See Cognito Member Definition details below.
  final pulumi.Input<WorkteamMemberDefinitionOidcMemberDefinition>? oidcMemberDefinition;

  /// Creates a new [WorkteamMemberDefinition].
  /// [cognitoMemberDefinition] The Amazon Cognito user group that is part of the work team. See Cognito Member Definition details below.
  /// [oidcMemberDefinition] A list user groups that exist in your OIDC Identity Provider (IdP). One to ten groups can be used to create a single private work team. See Cognito Member Definition details below.
  WorkteamMemberDefinition({
    this.cognitoMemberDefinition,
    this.oidcMemberDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitoMemberDefinition': ?pulumi.Input.mapOptionalInputValue<WorkteamMemberDefinitionCognitoMemberDefinition, Map<String, dynamic>>(cognitoMemberDefinition, (value) => value.toMap()),
      'oidcMemberDefinition': ?pulumi.Input.mapOptionalInputValue<WorkteamMemberDefinitionOidcMemberDefinition, Map<String, dynamic>>(oidcMemberDefinition, (value) => value.toMap()),
    };
  }

  factory WorkteamMemberDefinition.fromMap(Map<String, dynamic> map) {
    return WorkteamMemberDefinition(
      cognitoMemberDefinition: map['cognitoMemberDefinition'] == null ? null : (WorkteamMemberDefinitionCognitoMemberDefinition.fromMap((map['cognitoMemberDefinition'] as Map).cast<String, dynamic>())).input(),
      oidcMemberDefinition: map['oidcMemberDefinition'] == null ? null : (WorkteamMemberDefinitionOidcMemberDefinition.fromMap((map['oidcMemberDefinition'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkteamMemberDefinitionCognitoMemberDefinition {
  /// An identifier for an application client. You must create the app client ID using Amazon Cognito.
  final pulumi.Input<String> clientId;
  /// An identifier for a user group.
  final pulumi.Input<String> userGroup;
  /// An identifier for a user pool. The user pool must be in the same region as the service that you are calling.
  final pulumi.Input<String> userPool;

  /// Creates a new [WorkteamMemberDefinitionCognitoMemberDefinition].
  /// [clientId] An identifier for an application client. You must create the app client ID using Amazon Cognito.
  /// [userGroup] An identifier for a user group.
  /// [userPool] An identifier for a user pool. The user pool must be in the same region as the service that you are calling.
  WorkteamMemberDefinitionCognitoMemberDefinition({
    required this.clientId,
    required this.userGroup,
    required this.userPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'userGroup': userGroup,
      'userPool': userPool,
    };
  }

  factory WorkteamMemberDefinitionCognitoMemberDefinition.fromMap(Map<String, dynamic> map) {
    return WorkteamMemberDefinitionCognitoMemberDefinition(
      clientId: (map['clientId'] as String).input(),
      userGroup: (map['userGroup'] as String).input(),
      userPool: (map['userPool'] as String).input(),
    );
  }
}


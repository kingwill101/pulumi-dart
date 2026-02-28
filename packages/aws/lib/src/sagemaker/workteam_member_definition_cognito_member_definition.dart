// ignore_for_file: unused_element, unnecessary_cast

class WorkteamMemberDefinitionCognitoMemberDefinition {
  /// An identifier for an application client. You must create the app client ID using Amazon Cognito.
  final String clientId;

  /// An identifier for a user group.
  final String userGroup;

  /// An identifier for a user pool. The user pool must be in the same region as the service that you are calling.
  final String userPool;

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
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['userGroup'] = userGroup;
    map['userPool'] = userPool;
    return map;
  }

  factory WorkteamMemberDefinitionCognitoMemberDefinition.fromMap(
      Map<String, dynamic> map) {
    return WorkteamMemberDefinitionCognitoMemberDefinition(
      clientId: map['clientId'] as String,
      userGroup: map['userGroup'] as String,
      userPool: map['userPool'] as String,
    );
  }
}

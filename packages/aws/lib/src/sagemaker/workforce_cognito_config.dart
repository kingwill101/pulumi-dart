// ignore_for_file: unused_element, unnecessary_cast

class WorkforceCognitoConfig {
  /// The client ID for your Amazon Cognito user pool.
  final String clientId;

  /// ID for your Amazon Cognito user pool.
  final String userPool;

  /// Creates a new [WorkforceCognitoConfig].
  /// [clientId] The client ID for your Amazon Cognito user pool.
  /// [userPool] ID for your Amazon Cognito user pool.
  WorkforceCognitoConfig({
    required this.clientId,
    required this.userPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['userPool'] = userPool;
    return map;
  }

  factory WorkforceCognitoConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceCognitoConfig(
      clientId: map['clientId'] as String,
      userPool: map['userPool'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforceCognitoConfig {
  /// The client ID for your Amazon Cognito user pool.
  final pulumi.Input<String> clientId;
  /// ID for your Amazon Cognito user pool.
  final pulumi.Input<String> userPool;

  /// Creates a new [WorkforceCognitoConfig].
  /// [clientId] The client ID for your Amazon Cognito user pool.
  /// [userPool] ID for your Amazon Cognito user pool.
  const WorkforceCognitoConfig({
    required this.clientId,
    required this.userPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'userPool': userPool,
    };
  }

  factory WorkforceCognitoConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceCognitoConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      userPool: pulumi.Input.fromValue(map['userPool'] as String),
    );
  }
}


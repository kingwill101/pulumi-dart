// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiUserPoolConfig {
  /// Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  final pulumi.Input<String>? appIdClientRegex;
  /// AWS region in which the user pool was created.
  final pulumi.Input<String>? awsRegion;
  /// Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: `ALLOW` and `DENY`
  final pulumi.Input<String> defaultAction;
  /// User pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GraphQLApiUserPoolConfig].
  /// [appIdClientRegex] Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  /// [awsRegion] AWS region in which the user pool was created.
  /// [defaultAction] Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: `ALLOW` and `DENY`
  /// [userPoolId] User pool ID.
  const GraphQLApiUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    required this.defaultAction,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdClientRegex': ?appIdClientRegex,
      'awsRegion': ?awsRegion,
      'defaultAction': defaultAction,
      'userPoolId': userPoolId,
    };
  }

  factory GraphQLApiUserPoolConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiUserPoolConfig(
      appIdClientRegex: (() { final guardedValue = map['appIdClientRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class GraphQLApiUserPoolConfig {
  /// Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  final String? appIdClientRegex;

  /// AWS region in which the user pool was created.
  final String? awsRegion;

  /// Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: `ALLOW` and `DENY`
  final String defaultAction;

  /// User pool ID.
  final String userPoolId;

  /// Creates a new [GraphQLApiUserPoolConfig].
  /// [appIdClientRegex] Regular expression for validating the incoming Amazon Cognito User Pool app client ID.
  /// [awsRegion] AWS region in which the user pool was created.
  /// [defaultAction] Action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration. Valid: `ALLOW` and `DENY`
  /// [userPoolId] User pool ID.
  GraphQLApiUserPoolConfig({
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
      appIdClientRegex: map['appIdClientRegex'] == null
          ? null
          : map['appIdClientRegex'] as String,
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      defaultAction: map['defaultAction'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}

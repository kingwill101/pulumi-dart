// ignore_for_file: unused_element, unnecessary_cast


class GraphQLApiLambdaAuthorizerConfig {
  /// Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a `ttlOverride` key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600.
  final int? authorizerResultTtlInSeconds;
  /// ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow `lambda:InvokeFunction` from service principal `appsync.amazonaws.com`.
  final String authorizerUri;
  /// Regular expression for validation of tokens before the Lambda function is called.
  final String? identityValidationExpression;

  /// Creates a new [GraphQLApiLambdaAuthorizerConfig].
  /// [authorizerResultTtlInSeconds] Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a `ttlOverride` key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600.
  /// [authorizerUri] ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow `lambda:InvokeFunction` from service principal `appsync.amazonaws.com`.
  /// [identityValidationExpression] Regular expression for validation of tokens before the Lambda function is called.
  GraphQLApiLambdaAuthorizerConfig({
    this.authorizerResultTtlInSeconds,
    required this.authorizerUri,
    this.identityValidationExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerUri': authorizerUri,
      'identityValidationExpression': ?identityValidationExpression,
    };
  }

  factory GraphQLApiLambdaAuthorizerConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiLambdaAuthorizerConfig(
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : map['authorizerResultTtlInSeconds'] as int,
      authorizerUri: map['authorizerUri'] as String,
      identityValidationExpression: map['identityValidationExpression'] == null ? null : map['identityValidationExpression'] as String,
    );
  }
}


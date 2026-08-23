// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig {
  /// Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a `ttlOverride` key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600.
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow `lambda:InvokeFunction` from service principal `appsync.amazonaws.com`.
  final pulumi.Input<String> authorizerUri;
  /// Regular expression for validation of tokens before the Lambda function is called.
  final pulumi.Input<String>? identityValidationExpression;

  /// Creates a new [GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig].
  /// [authorizerResultTtlInSeconds] Number of seconds a response should be cached for. The default is 5 minutes (300 seconds). The Lambda function can override this by returning a `ttlOverride` key in its response. A value of 0 disables caching of responses. Minimum value of 0. Maximum value of 3600.
  /// [authorizerUri] ARN of the Lambda function to be called for authorization. Note: This Lambda function must have a resource-based policy assigned to it, to allow `lambda:InvokeFunction` from service principal `appsync.amazonaws.com`.
  /// [identityValidationExpression] Regular expression for validation of tokens before the Lambda function is called.
  const GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig({
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

  factory GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig(
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authorizerUri: pulumi.Input.fromValue(map['authorizerUri'] as String),
      identityValidationExpression: (() { final guardedValue = map['identityValidationExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

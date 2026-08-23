// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiEventConfigAuthProviderLambdaAuthorizerConfig {
  /// TTL in seconds for the authorization result cache.
  final pulumi.Input<int>? authorizerResultTtlInSeconds;
  /// URI of the Lambda function for authorization.
  final pulumi.Input<String> authorizerUri;
  /// Regular expression for identity validation.
  final pulumi.Input<String>? identityValidationExpression;

  /// Creates a new [ApiEventConfigAuthProviderLambdaAuthorizerConfig].
  /// [authorizerResultTtlInSeconds] TTL in seconds for the authorization result cache.
  /// [authorizerUri] URI of the Lambda function for authorization.
  /// [identityValidationExpression] Regular expression for identity validation.
  const ApiEventConfigAuthProviderLambdaAuthorizerConfig({
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

  factory ApiEventConfigAuthProviderLambdaAuthorizerConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigAuthProviderLambdaAuthorizerConfig(
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      authorizerUri: pulumi.Input.fromValue(map['authorizerUri'] as String),
      identityValidationExpression: (() { final guardedValue = map['identityValidationExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

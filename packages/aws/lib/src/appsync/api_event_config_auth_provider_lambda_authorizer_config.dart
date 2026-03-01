// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigAuthProviderLambdaAuthorizerConfig {
  /// TTL in seconds for the authorization result cache.
  final int? authorizerResultTtlInSeconds;

  /// URI of the Lambda function for authorization.
  final String authorizerUri;

  /// Regular expression for identity validation.
  final String? identityValidationExpression;

  /// Creates a new [ApiEventConfigAuthProviderLambdaAuthorizerConfig].
  /// [authorizerResultTtlInSeconds] TTL in seconds for the authorization result cache.
  /// [authorizerUri] URI of the Lambda function for authorization.
  /// [identityValidationExpression] Regular expression for identity validation.
  ApiEventConfigAuthProviderLambdaAuthorizerConfig({
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

  factory ApiEventConfigAuthProviderLambdaAuthorizerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiEventConfigAuthProviderLambdaAuthorizerConfig(
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null
          ? null
          : map['authorizerResultTtlInSeconds'] as int,
      authorizerUri: map['authorizerUri'] as String,
      identityValidationExpression: map['identityValidationExpression'] == null
          ? null
          : map['identityValidationExpression'] as String,
    );
  }
}

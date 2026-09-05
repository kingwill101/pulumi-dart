// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config_auth_provider_cognito_config.dart';
import 'api_event_config_auth_provider_lambda_authorizer_config.dart';
import 'api_event_config_auth_provider_openid_connect_config.dart';

class ApiEventConfigAuthProvider {
  /// Type of authentication provider. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final pulumi.Input<String> authType;
  /// Configuration for Cognito user pool authentication. Required when `authType` is `AMAZON_COGNITO_USER_POOLS`. See `cognitoConfig` Block below.
  final pulumi.Input<ApiEventConfigAuthProviderCognitoConfig?>? cognitoConfig;
  /// Configuration for Lambda authorization. Required when `authType` is `AWS_LAMBDA`. See `lambdaAuthorizerConfig` Block below.
  final pulumi.Input<ApiEventConfigAuthProviderLambdaAuthorizerConfig?>? lambdaAuthorizerConfig;
  /// Configuration for OpenID Connect. Required when `authType` is `OPENID_CONNECT`. See `openidConnectConfig` Block below.
  final pulumi.Input<ApiEventConfigAuthProviderOpenidConnectConfig?>? openidConnectConfig;

  /// Creates a new [ApiEventConfigAuthProvider].
  /// [authType] Type of authentication provider. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  /// [cognitoConfig] Configuration for Cognito user pool authentication. Required when `authType` is `AMAZON_COGNITO_USER_POOLS`. See `cognitoConfig` Block below.
  /// [lambdaAuthorizerConfig] Configuration for Lambda authorization. Required when `authType` is `AWS_LAMBDA`. See `lambdaAuthorizerConfig` Block below.
  /// [openidConnectConfig] Configuration for OpenID Connect. Required when `authType` is `OPENID_CONNECT`. See `openidConnectConfig` Block below.
  const ApiEventConfigAuthProvider({
    required this.authType,
    this.cognitoConfig,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'cognitoConfig': ?pulumi.Input.mapOptionalInputValue<ApiEventConfigAuthProviderCognitoConfig, Map<String, dynamic>>(cognitoConfig, (value) => value.toMap()),
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<ApiEventConfigAuthProviderLambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openidConnectConfig': ?pulumi.Input.mapOptionalInputValue<ApiEventConfigAuthProviderOpenidConnectConfig, Map<String, dynamic>>(openidConnectConfig, (value) => value.toMap()),
    };
  }

  factory ApiEventConfigAuthProvider.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigAuthProvider(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      cognitoConfig: (() { final guardedValue = map['cognitoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEventConfigAuthProviderCognitoConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaAuthorizerConfig: (() { final guardedValue = map['lambdaAuthorizerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEventConfigAuthProviderLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openidConnectConfig: (() { final guardedValue = map['openidConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEventConfigAuthProviderOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

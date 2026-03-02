// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config_auth_provider_cognito_config.dart';
import 'api_event_config_auth_provider_lambda_authorizer_config.dart';
import 'api_event_config_auth_provider_openid_connect_config.dart';

class ApiEventConfigAuthProvider {
  /// Type of authentication provider. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final pulumi.Input<String> authType;
  /// Configuration for Cognito user pool authentication. Required when `auth_type` is `AMAZON_COGNITO_USER_POOLS`. See Cognito Config below.
  final pulumi.Input<ApiEventConfigAuthProviderCognitoConfig>? cognitoConfig;
  /// Configuration for Lambda authorization. Required when `auth_type` is `AWS_LAMBDA`. See Lambda Authorizer Config below.
  final pulumi.Input<ApiEventConfigAuthProviderLambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// Configuration for OpenID Connect. Required when `auth_type` is `OPENID_CONNECT`. See OpenID Connect Config below.
  final pulumi.Input<ApiEventConfigAuthProviderOpenidConnectConfig>? openidConnectConfig;

  /// Creates a new [ApiEventConfigAuthProvider].
  /// [authType] Type of authentication provider. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  /// [cognitoConfig] Configuration for Cognito user pool authentication. Required when `auth_type` is `AMAZON_COGNITO_USER_POOLS`. See Cognito Config below.
  /// [lambdaAuthorizerConfig] Configuration for Lambda authorization. Required when `auth_type` is `AWS_LAMBDA`. See Lambda Authorizer Config below.
  /// [openidConnectConfig] Configuration for OpenID Connect. Required when `auth_type` is `OPENID_CONNECT`. See OpenID Connect Config below.
  ApiEventConfigAuthProvider({
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
      authType: (map['authType'] as String).input(),
      cognitoConfig: map['cognitoConfig'] == null ? null : ((ApiEventConfigAuthProviderCognitoConfig.fromMap((map['cognitoConfig']! as Map).cast<String, dynamic>())).input()).input(),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : ((ApiEventConfigAuthProviderLambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig']! as Map).cast<String, dynamic>())).input()).input(),
      openidConnectConfig: map['openidConnectConfig'] == null ? null : ((ApiEventConfigAuthProviderOpenidConnectConfig.fromMap((map['openidConnectConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


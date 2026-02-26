// ignore_for_file: unused_element, unnecessary_cast

import '../api_event_config_auth_provider_cognito_config/api_event_config_auth_provider_cognito_config.dart';
import '../api_event_config_auth_provider_lambda_authorizer_config/api_event_config_auth_provider_lambda_authorizer_config.dart';
import '../api_event_config_auth_provider_openid_connect_config/api_event_config_auth_provider_openid_connect_config.dart';

class ApiEventConfigAuthProvider {
  /// Type of authentication provider. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Configuration for Cognito user pool authentication. Required when <span pulumi-lang-nodejs="`authType`" pulumi-lang-dotnet="`AuthType`" pulumi-lang-go="`authType`" pulumi-lang-python="`auth_type`" pulumi-lang-yaml="`authType`" pulumi-lang-java="`authType`">`auth_type`</span> is `AMAZON_COGNITO_USER_POOLS`. See Cognito Config below.
  final ApiEventConfigAuthProviderCognitoConfig? cognitoConfig;

  /// Configuration for Lambda authorization. Required when <span pulumi-lang-nodejs="`authType`" pulumi-lang-dotnet="`AuthType`" pulumi-lang-go="`authType`" pulumi-lang-python="`auth_type`" pulumi-lang-yaml="`authType`" pulumi-lang-java="`authType`">`auth_type`</span> is `AWS_LAMBDA`. See Lambda Authorizer Config below.
  final ApiEventConfigAuthProviderLambdaAuthorizerConfig?
      lambdaAuthorizerConfig;

  /// Configuration for OpenID Connect. Required when <span pulumi-lang-nodejs="`authType`" pulumi-lang-dotnet="`AuthType`" pulumi-lang-go="`authType`" pulumi-lang-python="`auth_type`" pulumi-lang-yaml="`authType`" pulumi-lang-java="`authType`">`auth_type`</span> is `OPENID_CONNECT`. See OpenID Connect Config below.
  final ApiEventConfigAuthProviderOpenidConnectConfig? openidConnectConfig;

  ApiEventConfigAuthProvider({
    required this.authType,
    this.cognitoConfig,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    final cognitoConfigValue = cognitoConfig;
    if (cognitoConfigValue != null) {
      map['cognitoConfig'] = cognitoConfigValue.toMap();
    }
    final lambdaAuthorizerConfigValue = lambdaAuthorizerConfig;
    if (lambdaAuthorizerConfigValue != null) {
      map['lambdaAuthorizerConfig'] = lambdaAuthorizerConfigValue.toMap();
    }
    final openidConnectConfigValue = openidConnectConfig;
    if (openidConnectConfigValue != null) {
      map['openidConnectConfig'] = openidConnectConfigValue.toMap();
    }
    return map;
  }

  factory ApiEventConfigAuthProvider.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigAuthProvider(
      authType: map['authType'] as String,
      cognitoConfig: map['cognitoConfig'] == null
          ? null
          : ApiEventConfigAuthProviderCognitoConfig.fromMap(
              (map['cognitoConfig'] as Map).cast<String, dynamic>()),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null
          ? null
          : ApiEventConfigAuthProviderLambdaAuthorizerConfig.fromMap(
              (map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>()),
      openidConnectConfig: map['openidConnectConfig'] == null
          ? null
          : ApiEventConfigAuthProviderOpenidConnectConfig.fromMap(
              (map['openidConnectConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'graph_qlapi_additional_authentication_provider_lambda_authorizer_config.dart';
import 'graph_qlapi_additional_authentication_provider_openid_connect_config.dart';
import 'graph_qlapi_additional_authentication_provider_user_pool_config.dart';

class GraphQLApiAdditionalAuthenticationProvider {
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final String authenticationType;
  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  final GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig? lambdaAuthorizerConfig;
  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  final GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig? openidConnectConfig;
  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  final GraphQLApiAdditionalAuthenticationProviderUserPoolConfig? userPoolConfig;

  /// Creates a new [GraphQLApiAdditionalAuthenticationProvider].
  /// [authenticationType] Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  /// [lambdaAuthorizerConfig] Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  /// [openidConnectConfig] Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  /// [userPoolConfig] Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  GraphQLApiAdditionalAuthenticationProvider({
    required this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'lambdaAuthorizerConfig': ?lambdaAuthorizerConfig == null ? null : lambdaAuthorizerConfig!.toMap(),
      'openidConnectConfig': ?openidConnectConfig == null ? null : openidConnectConfig!.toMap(),
      'userPoolConfig': ?userPoolConfig == null ? null : userPoolConfig!.toMap(),
    };
  }

  factory GraphQLApiAdditionalAuthenticationProvider.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProvider(
      authenticationType: map['authenticationType'] as String,
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>()),
      openidConnectConfig: map['openidConnectConfig'] == null ? null : GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig.fromMap((map['openidConnectConfig'] as Map).cast<String, dynamic>()),
      userPoolConfig: map['userPoolConfig'] == null ? null : GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap((map['userPoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}


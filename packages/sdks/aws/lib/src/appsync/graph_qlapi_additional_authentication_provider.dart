// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_additional_authentication_provider_lambda_authorizer_config.dart';
import 'graph_qlapi_additional_authentication_provider_openid_connect_config.dart';
import 'graph_qlapi_additional_authentication_provider_user_pool_config.dart';

class GraphQLApiAdditionalAuthenticationProvider {
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final pulumi.Input<String> authenticationType;
  /// Nested argument containing Lambda authorizer configuration. See `lambdaAuthorizerConfig` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// Nested argument containing OpenID Connect configuration. See `openidConnectConfig` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig>? openidConnectConfig;
  /// Amazon Cognito User Pool configuration. See `additional_authentication_provider.user_pool_config` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderUserPoolConfig>? userPoolConfig;

  /// Creates a new [GraphQLApiAdditionalAuthenticationProvider].
  /// [authenticationType] Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  /// [lambdaAuthorizerConfig] Nested argument containing Lambda authorizer configuration. See `lambdaAuthorizerConfig` Block for details.
  /// [openidConnectConfig] Nested argument containing OpenID Connect configuration. See `openidConnectConfig` Block for details.
  /// [userPoolConfig] Amazon Cognito User Pool configuration. See `additional_authentication_provider.user_pool_config` Block for details.
  const GraphQLApiAdditionalAuthenticationProvider({
    required this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openidConnectConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig, Map<String, dynamic>>(openidConnectConfig, (value) => value.toMap()),
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderUserPoolConfig, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
    };
  }

  factory GraphQLApiAdditionalAuthenticationProvider.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProvider(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      lambdaAuthorizerConfig: (() { final guardedValue = map['lambdaAuthorizerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openidConnectConfig: (() { final guardedValue = map['openidConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolConfig: (() { final guardedValue = map['userPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_qlapi_additional_authentication_provider_lambda_authorizer_config.dart';
import 'graph_qlapi_additional_authentication_provider_openid_connect_config.dart';
import 'graph_qlapi_additional_authentication_provider_user_pool_config.dart';

class GraphQLApiAdditionalAuthenticationProvider {
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final pulumi.Input<String> authenticationType;
  /// Nested argument containing Lambda authorizer configuration. See `lambda_authorizer_config` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// Nested argument containing OpenID Connect configuration. See `openid_connect_config` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig>? openidConnectConfig;
  /// Amazon Cognito User Pool configuration. See `user_pool_config` Block for details.
  final pulumi.Input<GraphQLApiAdditionalAuthenticationProviderUserPoolConfig>? userPoolConfig;

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
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openidConnectConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig, Map<String, dynamic>>(openidConnectConfig, (value) => value.toMap()),
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<GraphQLApiAdditionalAuthenticationProviderUserPoolConfig, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
    };
  }

  factory GraphQLApiAdditionalAuthenticationProvider.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProvider(
      authenticationType: (map['authenticationType'] as String).input(),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : ((GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig']! as Map).cast<String, dynamic>())).input()).input(),
      openidConnectConfig: map['openidConnectConfig'] == null ? null : ((GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig.fromMap((map['openidConnectConfig']! as Map).cast<String, dynamic>())).input()).input(),
      userPoolConfig: map['userPoolConfig'] == null ? null : ((GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap((map['userPoolConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


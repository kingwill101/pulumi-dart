// ignore_for_file: unused_element, unnecessary_cast

import '../graph_qlapi_additional_authentication_provider_lambda_authorizer_config/graph_qlapi_additional_authentication_provider_lambda_authorizer_config.dart';
import '../graph_qlapi_additional_authentication_provider_openid_connect_config/graph_qlapi_additional_authentication_provider_openid_connect_config.dart';
import '../graph_qlapi_additional_authentication_provider_user_pool_config/graph_qlapi_additional_authentication_provider_user_pool_config.dart';

class GraphQLApiAdditionalAuthenticationProvider {
  /// Authentication type. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`
  final String authenticationType;

  /// Nested argument containing Lambda authorizer configuration. See <span pulumi-lang-nodejs="`lambdaAuthorizerConfig`" pulumi-lang-dotnet="`LambdaAuthorizerConfig`" pulumi-lang-go="`lambdaAuthorizerConfig`" pulumi-lang-python="`lambda_authorizer_config`" pulumi-lang-yaml="`lambdaAuthorizerConfig`" pulumi-lang-java="`lambdaAuthorizerConfig`">`lambda_authorizer_config`</span> Block for details.
  final GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig?
      lambdaAuthorizerConfig;

  /// Nested argument containing OpenID Connect configuration. See <span pulumi-lang-nodejs="`openidConnectConfig`" pulumi-lang-dotnet="`OpenidConnectConfig`" pulumi-lang-go="`openidConnectConfig`" pulumi-lang-python="`openid_connect_config`" pulumi-lang-yaml="`openidConnectConfig`" pulumi-lang-java="`openidConnectConfig`">`openid_connect_config`</span> Block for details.
  final GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig?
      openidConnectConfig;

  /// Amazon Cognito User Pool configuration. See <span pulumi-lang-nodejs="`userPoolConfig`" pulumi-lang-dotnet="`UserPoolConfig`" pulumi-lang-go="`userPoolConfig`" pulumi-lang-python="`user_pool_config`" pulumi-lang-yaml="`userPoolConfig`" pulumi-lang-java="`userPoolConfig`">`user_pool_config`</span> Block for details.
  final GraphQLApiAdditionalAuthenticationProviderUserPoolConfig?
      userPoolConfig;

  GraphQLApiAdditionalAuthenticationProvider({
    required this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationType'] = authenticationType;
    final lambdaAuthorizerConfigValue = lambdaAuthorizerConfig;
    if (lambdaAuthorizerConfigValue != null) {
      map['lambdaAuthorizerConfig'] = lambdaAuthorizerConfigValue.toMap();
    }
    final openidConnectConfigValue = openidConnectConfig;
    if (openidConnectConfigValue != null) {
      map['openidConnectConfig'] = openidConnectConfigValue.toMap();
    }
    final userPoolConfigValue = userPoolConfig;
    if (userPoolConfigValue != null) {
      map['userPoolConfig'] = userPoolConfigValue.toMap();
    }
    return map;
  }

  factory GraphQLApiAdditionalAuthenticationProvider.fromMap(
      Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProvider(
      authenticationType: map['authenticationType'] as String,
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null
          ? null
          : GraphQLApiAdditionalAuthenticationProviderLambdaAuthorizerConfig
              .fromMap((map['lambdaAuthorizerConfig'] as Map)
                  .cast<String, dynamic>()),
      openidConnectConfig: map['openidConnectConfig'] == null
          ? null
          : GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig
              .fromMap(
                  (map['openidConnectConfig'] as Map).cast<String, dynamic>()),
      userPoolConfig: map['userPoolConfig'] == null
          ? null
          : GraphQLApiAdditionalAuthenticationProviderUserPoolConfig.fromMap(
              (map['userPoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

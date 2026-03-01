// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_type_enum_value_response.dart';
import 'cognito_user_pool_config_response.dart';
import 'lambda_authorizer_config_response.dart';
import 'open_idconnect_config_response.dart';

/// Definition of AdditionalAuthenticationProvider
class AdditionalAuthenticationProviderResponse {
  /// <p>The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
  final AuthenticationTypeEnumValueResponse? authenticationType;
  /// <p>Configuration for Lambda function authorization.</p>
  final LambdaAuthorizerConfigResponse? lambdaAuthorizerConfig;
  /// <p>The OIDC configuration.</p>
  final OpenIDConnectConfigResponse? openIDConnectConfig;
  /// <p>The Amazon Cognito user pool configuration.</p>
  final CognitoUserPoolConfigResponse? userPoolConfig;

  /// Creates a new [AdditionalAuthenticationProviderResponse].
  /// [authenticationType] <p>The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
  /// [lambdaAuthorizerConfig] <p>Configuration for Lambda function authorization.</p>
  /// [openIDConnectConfig] <p>The OIDC configuration.</p>
  /// [userPoolConfig] <p>The Amazon Cognito user pool configuration.</p>
  AdditionalAuthenticationProviderResponse({
    this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openIDConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType == null ? null : authenticationType!.toMap(),
      'lambdaAuthorizerConfig': ?lambdaAuthorizerConfig == null ? null : lambdaAuthorizerConfig!.toMap(),
      'openIDConnectConfig': ?openIDConnectConfig == null ? null : openIDConnectConfig!.toMap(),
      'userPoolConfig': ?userPoolConfig == null ? null : userPoolConfig!.toMap(),
    };
  }

  factory AdditionalAuthenticationProviderResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthenticationProviderResponse(
      authenticationType: map['authenticationType'] == null ? null : AuthenticationTypeEnumValueResponse.fromMap((map['authenticationType'] as Map).cast<String, dynamic>()),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : LambdaAuthorizerConfigResponse.fromMap((map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>()),
      openIDConnectConfig: map['openIDConnectConfig'] == null ? null : OpenIDConnectConfigResponse.fromMap((map['openIDConnectConfig'] as Map).cast<String, dynamic>()),
      userPoolConfig: map['userPoolConfig'] == null ? null : CognitoUserPoolConfigResponse.fromMap((map['userPoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_type_enum_value_response.dart';
import 'cognito_user_pool_config_response.dart';
import 'lambda_authorizer_config_response.dart';
import 'open_idconnect_config_response.dart';

/// Definition of AdditionalAuthenticationProvider
class AdditionalAuthenticationProviderResponse {
  /// <p>The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
  final pulumi.Input<AuthenticationTypeEnumValueResponse>? authenticationType;
  /// <p>Configuration for Lambda function authorization.</p>
  final pulumi.Input<LambdaAuthorizerConfigResponse>? lambdaAuthorizerConfig;
  /// <p>The OIDC configuration.</p>
  final pulumi.Input<OpenIDConnectConfigResponse>? openIDConnectConfig;
  /// <p>The Amazon Cognito user pool configuration.</p>
  final pulumi.Input<CognitoUserPoolConfigResponse>? userPoolConfig;

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
      'authenticationType': ?pulumi.Input.mapOptionalInputValue<AuthenticationTypeEnumValueResponse, Map<String, dynamic>>(authenticationType, (value) => value.toMap()),
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<LambdaAuthorizerConfigResponse, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openIDConnectConfig': ?pulumi.Input.mapOptionalInputValue<OpenIDConnectConfigResponse, Map<String, dynamic>>(openIDConnectConfig, (value) => value.toMap()),
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<CognitoUserPoolConfigResponse, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
    };
  }

  factory AdditionalAuthenticationProviderResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthenticationProviderResponse(
      authenticationType: map['authenticationType'] == null ? null : (AuthenticationTypeEnumValueResponse.fromMap((map['authenticationType'] as Map).cast<String, dynamic>())).input(),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : (LambdaAuthorizerConfigResponse.fromMap((map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>())).input(),
      openIDConnectConfig: map['openIDConnectConfig'] == null ? null : (OpenIDConnectConfigResponse.fromMap((map['openIDConnectConfig'] as Map).cast<String, dynamic>())).input(),
      userPoolConfig: map['userPoolConfig'] == null ? null : (CognitoUserPoolConfigResponse.fromMap((map['userPoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


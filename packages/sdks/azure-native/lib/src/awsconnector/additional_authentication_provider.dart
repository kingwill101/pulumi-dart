// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_type_enum_value.dart';
import 'cognito_user_pool_config.dart';
import 'lambda_authorizer_config.dart';
import 'open_idconnect_config.dart';

/// Definition of AdditionalAuthenticationProvider
class AdditionalAuthenticationProvider {
  /// <p>The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
  final pulumi.Input<AuthenticationTypeEnumValue>? authenticationType;
  /// <p>Configuration for Lambda function authorization.</p>
  final pulumi.Input<LambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// <p>The OIDC configuration.</p>
  final pulumi.Input<OpenIDConnectConfig>? openIDConnectConfig;
  /// <p>The Amazon Cognito user pool configuration.</p>
  final pulumi.Input<CognitoUserPoolConfig>? userPoolConfig;

  /// Creates a new [AdditionalAuthenticationProvider].
  /// [authenticationType] <p>The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
  /// [lambdaAuthorizerConfig] <p>Configuration for Lambda function authorization.</p>
  /// [openIDConnectConfig] <p>The OIDC configuration.</p>
  /// [userPoolConfig] <p>The Amazon Cognito user pool configuration.</p>
  AdditionalAuthenticationProvider({
    this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openIDConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?pulumi.Input.mapOptionalInputValue<AuthenticationTypeEnumValue, Map<String, dynamic>>(authenticationType, (value) => value.toMap()),
      'lambdaAuthorizerConfig': ?pulumi.Input.mapOptionalInputValue<LambdaAuthorizerConfig, Map<String, dynamic>>(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openIDConnectConfig': ?pulumi.Input.mapOptionalInputValue<OpenIDConnectConfig, Map<String, dynamic>>(openIDConnectConfig, (value) => value.toMap()),
      'userPoolConfig': ?pulumi.Input.mapOptionalInputValue<CognitoUserPoolConfig, Map<String, dynamic>>(userPoolConfig, (value) => value.toMap()),
    };
  }

  factory AdditionalAuthenticationProvider.fromMap(Map<String, dynamic> map) {
    return AdditionalAuthenticationProvider(
      authenticationType: map['authenticationType'] == null ? null : (AuthenticationTypeEnumValue.fromMap((map['authenticationType'] as Map).cast<String, dynamic>())).input(),
      lambdaAuthorizerConfig: map['lambdaAuthorizerConfig'] == null ? null : (LambdaAuthorizerConfig.fromMap((map['lambdaAuthorizerConfig'] as Map).cast<String, dynamic>())).input(),
      openIDConnectConfig: map['openIDConnectConfig'] == null ? null : (OpenIDConnectConfig.fromMap((map['openIDConnectConfig'] as Map).cast<String, dynamic>())).input(),
      userPoolConfig: map['userPoolConfig'] == null ? null : (CognitoUserPoolConfig.fromMap((map['userPoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


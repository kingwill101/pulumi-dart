// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_type_enum_value.dart';
import 'cognito_user_pool_config.dart';
import 'lambda_authorizer_config.dart';
import 'open_idconnect_config.dart';

/// Definition of AdditionalAuthenticationProvider
class AdditionalAuthenticationProvider {
  /// &lt;p&gt;The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.&lt;/p&gt;
  final pulumi.Input<AuthenticationTypeEnumValue>? authenticationType;
  /// &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  final pulumi.Input<LambdaAuthorizerConfig>? lambdaAuthorizerConfig;
  /// &lt;p&gt;The OIDC configuration.&lt;/p&gt;
  final pulumi.Input<OpenIDConnectConfig>? openIDConnectConfig;
  /// &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  final pulumi.Input<CognitoUserPoolConfig>? userPoolConfig;

  /// Creates a new [AdditionalAuthenticationProvider].
  /// [authenticationType] &lt;p&gt;The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.&lt;/p&gt;
  /// [lambdaAuthorizerConfig] &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  /// [openIDConnectConfig] &lt;p&gt;The OIDC configuration.&lt;/p&gt;
  /// [userPoolConfig] &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  const AdditionalAuthenticationProvider({
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
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaAuthorizerConfig: (() { final guardedValue = map['lambdaAuthorizerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LambdaAuthorizerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openIDConnectConfig: (() { final guardedValue = map['openIDConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIDConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolConfig: (() { final guardedValue = map['userPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CognitoUserPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


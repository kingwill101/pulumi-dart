// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_type_enum_value_response.dart';
import 'cognito_user_pool_config_response.dart';
import 'lambda_authorizer_config_response.dart';
import 'open_idconnect_config_response.dart';

/// Definition of AdditionalAuthenticationProvider
class AdditionalAuthenticationProviderResponse {
  /// &lt;p&gt;The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.&lt;/p&gt;
  final pulumi.Input<AuthenticationTypeEnumValueResponse>? authenticationType;

  /// &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  final pulumi.Input<LambdaAuthorizerConfigResponse>? lambdaAuthorizerConfig;

  /// &lt;p&gt;The OIDC configuration.&lt;/p&gt;
  final pulumi.Input<OpenIDConnectConfigResponse>? openIDConnectConfig;

  /// &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  final pulumi.Input<CognitoUserPoolConfigResponse>? userPoolConfig;

  /// Creates a new [AdditionalAuthenticationProviderResponse].
  /// [authenticationType] &lt;p&gt;The authentication type: API key, Identity and Access Management (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.&lt;/p&gt;
  /// [lambdaAuthorizerConfig] &lt;p&gt;Configuration for Lambda function authorization.&lt;/p&gt;
  /// [openIDConnectConfig] &lt;p&gt;The OIDC configuration.&lt;/p&gt;
  /// [userPoolConfig] &lt;p&gt;The Amazon Cognito user pool configuration.&lt;/p&gt;
  AdditionalAuthenticationProviderResponse({
    this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openIDConnectConfig,
    this.userPoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType':
          ?pulumi.Input.mapOptionalInputValue<
            AuthenticationTypeEnumValueResponse,
            Map<String, dynamic>
          >(authenticationType, (value) => value.toMap()),
      'lambdaAuthorizerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LambdaAuthorizerConfigResponse,
            Map<String, dynamic>
          >(lambdaAuthorizerConfig, (value) => value.toMap()),
      'openIDConnectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            OpenIDConnectConfigResponse,
            Map<String, dynamic>
          >(openIDConnectConfig, (value) => value.toMap()),
      'userPoolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CognitoUserPoolConfigResponse,
            Map<String, dynamic>
          >(userPoolConfig, (value) => value.toMap()),
    };
  }

  factory AdditionalAuthenticationProviderResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdditionalAuthenticationProviderResponse(
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthenticationTypeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lambdaAuthorizerConfig: (() {
        final guardedValue = map['lambdaAuthorizerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LambdaAuthorizerConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      openIDConnectConfig: (() {
        final guardedValue = map['openIDConnectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OpenIDConnectConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userPoolConfig: (() {
        final guardedValue = map['userPoolConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CognitoUserPoolConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

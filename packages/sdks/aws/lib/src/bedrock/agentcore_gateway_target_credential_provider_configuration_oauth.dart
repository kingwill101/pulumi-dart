// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationOauth {
  /// Map of custom parameters to include in OAuth requests.
  final pulumi.Input<Map<String, String>>? customParameters;
  /// The URL where the end user's browser is redirected after obtaining the authorization code. Required when `grantType` is `AUTHORIZATION_CODE`.
  final pulumi.Input<String>? defaultReturnUrl;
  /// The OAuth grant type. Valid values: `CLIENT_CREDENTIALS` (machine-to-machine authentication), `AUTHORIZATION_CODE` (user-delegated access).
  final pulumi.Input<String>? grantType;
  /// ARN of the Oauth credential provider for OAuth authentication.
  final pulumi.Input<String> providerArn;
  /// Set of OAuth scopes to request.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationOauth].
  /// [customParameters] Map of custom parameters to include in OAuth requests.
  /// [defaultReturnUrl] The URL where the end user's browser is redirected after obtaining the authorization code. Required when `grantType` is `AUTHORIZATION_CODE`.
  /// [grantType] The OAuth grant type. Valid values: `CLIENT_CREDENTIALS` (machine-to-machine authentication), `AUTHORIZATION_CODE` (user-delegated access).
  /// [providerArn] ARN of the Oauth credential provider for OAuth authentication.
  /// [scopes] Set of OAuth scopes to request.
  const AgentcoreGatewayTargetCredentialProviderConfigurationOauth({
    this.customParameters,
    this.defaultReturnUrl,
    this.grantType,
    required this.providerArn,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParameters': ?customParameters,
      'defaultReturnUrl': ?defaultReturnUrl,
      'grantType': ?grantType,
      'providerArn': providerArn,
      'scopes': scopes,
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationOauth(
      customParameters: (() { final guardedValue = map['customParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultReturnUrl: (() { final guardedValue = map['defaultReturnUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantType: (() { final guardedValue = map['grantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerArn: pulumi.Input.fromValue(map['providerArn'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

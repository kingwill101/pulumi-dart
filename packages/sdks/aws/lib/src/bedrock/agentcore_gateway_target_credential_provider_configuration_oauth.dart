// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationOauth {
  /// Map of custom parameters to include in OAuth requests.
  final pulumi.Input<Map<String, String>>? customParameters;
  /// ARN of the OIDC provider for OAuth authentication.
  final pulumi.Input<String> providerArn;
  /// Set of OAuth scopes to request.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationOauth].
  /// [customParameters] Map of custom parameters to include in OAuth requests.
  /// [providerArn] ARN of the OIDC provider for OAuth authentication.
  /// [scopes] Set of OAuth scopes to request.
  AgentcoreGatewayTargetCredentialProviderConfigurationOauth({
    this.customParameters,
    required this.providerArn,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParameters': ?customParameters,
      'providerArn': providerArn,
      'scopes': scopes,
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationOauth(
      customParameters: (() { final guardedValue = map['customParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      providerArn: pulumi.Input.fromValue(map['providerArn'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}


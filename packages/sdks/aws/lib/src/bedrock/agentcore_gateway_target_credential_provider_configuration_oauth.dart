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
      customParameters: map['customParameters'] == null ? null : (((map['customParameters'] as Map).cast<String, String>()).input()).input(),
      providerArn: (map['providerArn'] as String).input(),
      scopes: ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationApiKey {
  /// Location where the API key credential is provided. Valid values: `HEADER`, `QUERY_PARAMETER`.
  final pulumi.Input<String>? credentialLocation;
  /// Name of the parameter containing the API key credential.
  final pulumi.Input<String>? credentialParameterName;
  /// Prefix to add to the API key credential value.
  final pulumi.Input<String>? credentialPrefix;
  /// ARN of the OIDC provider for API key authentication.
  final pulumi.Input<String> providerArn;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationApiKey].
  /// [credentialLocation] Location where the API key credential is provided. Valid values: `HEADER`, `QUERY_PARAMETER`.
  /// [credentialParameterName] Name of the parameter containing the API key credential.
  /// [credentialPrefix] Prefix to add to the API key credential value.
  /// [providerArn] ARN of the OIDC provider for API key authentication.
  AgentcoreGatewayTargetCredentialProviderConfigurationApiKey({
    this.credentialLocation,
    this.credentialParameterName,
    this.credentialPrefix,
    required this.providerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialLocation': ?credentialLocation,
      'credentialParameterName': ?credentialParameterName,
      'credentialPrefix': ?credentialPrefix,
      'providerArn': providerArn,
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationApiKey(
      credentialLocation: map['credentialLocation'] == null ? null : ((map['credentialLocation'] as String).input()).input(),
      credentialParameterName: map['credentialParameterName'] == null ? null : ((map['credentialParameterName'] as String).input()).input(),
      credentialPrefix: map['credentialPrefix'] == null ? null : ((map['credentialPrefix'] as String).input()).input(),
      providerArn: (map['providerArn'] as String).input(),
    );
  }
}


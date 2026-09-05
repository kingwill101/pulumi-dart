// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetCredentialProviderConfigurationApiKey {
  /// Location where the API key credential is provided. Valid values: `HEADER`, `QUERY_PARAMETER`.
  final pulumi.Input<String?>? credentialLocation;
  /// Name of the parameter containing the API key credential.
  final pulumi.Input<String?>? credentialParameterName;
  /// Prefix to add to the API key credential value.
  final pulumi.Input<String?>? credentialPrefix;
  /// ARN of the OIDC provider for API key authentication.
  final pulumi.Input<String> providerArn;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfigurationApiKey].
  /// [credentialLocation] Location where the API key credential is provided. Valid values: `HEADER`, `QUERY_PARAMETER`.
  /// [credentialParameterName] Name of the parameter containing the API key credential.
  /// [credentialPrefix] Prefix to add to the API key credential value.
  /// [providerArn] ARN of the OIDC provider for API key authentication.
  const AgentcoreGatewayTargetCredentialProviderConfigurationApiKey({
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
      credentialLocation: (() { final guardedValue = map['credentialLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialParameterName: (() { final guardedValue = map['credentialParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialPrefix: (() { final guardedValue = map['credentialPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerArn: pulumi.Input.fromValue(map['providerArn'] as String),
    );
  }
}

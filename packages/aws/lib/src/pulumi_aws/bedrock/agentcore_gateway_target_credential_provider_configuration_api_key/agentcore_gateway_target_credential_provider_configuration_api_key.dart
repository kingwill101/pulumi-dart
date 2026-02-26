// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetCredentialProviderConfigurationApiKey {
  /// Location where the API key credential is provided. Valid values: `HEADER`, `QUERY_PARAMETER`.
  final String? credentialLocation;

  /// Name of the parameter containing the API key credential.
  final String? credentialParameterName;

  /// Prefix to add to the API key credential value.
  final String? credentialPrefix;

  /// ARN of the OIDC provider for API key authentication.
  final String providerArn;

  AgentcoreGatewayTargetCredentialProviderConfigurationApiKey({
    this.credentialLocation,
    this.credentialParameterName,
    this.credentialPrefix,
    required this.providerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialLocationValue = credentialLocation;
    if (credentialLocationValue != null) {
      map['credentialLocation'] = credentialLocationValue;
    }
    final credentialParameterNameValue = credentialParameterName;
    if (credentialParameterNameValue != null) {
      map['credentialParameterName'] = credentialParameterNameValue;
    }
    final credentialPrefixValue = credentialPrefix;
    if (credentialPrefixValue != null) {
      map['credentialPrefix'] = credentialPrefixValue;
    }
    map['providerArn'] = providerArn;
    return map;
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationApiKey(
      credentialLocation: map['credentialLocation'] == null
          ? null
          : map['credentialLocation'] as String,
      credentialParameterName: map['credentialParameterName'] == null
          ? null
          : map['credentialParameterName'] as String,
      credentialPrefix: map['credentialPrefix'] == null
          ? null
          : map['credentialPrefix'] as String,
      providerArn: map['providerArn'] as String,
    );
  }
}

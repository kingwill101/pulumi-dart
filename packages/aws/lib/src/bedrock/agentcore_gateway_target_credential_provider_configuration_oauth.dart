// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreGatewayTargetCredentialProviderConfigurationOauth {
  /// Map of custom parameters to include in OAuth requests.
  final Map<String, String>? customParameters;

  /// ARN of the OIDC provider for OAuth authentication.
  final String providerArn;

  /// Set of OAuth scopes to request.
  final List<String> scopes;

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
    final map = <String, dynamic>{};
    final customParametersValue = customParameters;
    if (customParametersValue != null) {
      map['customParameters'] = customParametersValue;
    }
    map['providerArn'] = providerArn;
    map['scopes'] = scopes;
    return map;
  }

  factory AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfigurationOauth(
      customParameters: map['customParameters'] == null
          ? null
          : (map['customParameters'] as Map).cast<String, String>(),
      providerArn: map['providerArn'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}

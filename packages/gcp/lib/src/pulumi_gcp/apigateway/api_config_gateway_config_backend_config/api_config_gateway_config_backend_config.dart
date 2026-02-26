// ignore_for_file: unused_element, unnecessary_cast

class ApiConfigGatewayConfigBackendConfig {
  /// Google Cloud IAM service account used to sign OIDC tokens for backends that have authentication configured
  /// (https://cloud.google.com/service-infrastructure/docs/service-management/reference/rest/v1/services.configs#backend).
  final String googleServiceAccount;

  ApiConfigGatewayConfigBackendConfig({
    required this.googleServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleServiceAccount'] = googleServiceAccount;
    return map;
  }

  factory ApiConfigGatewayConfigBackendConfig.fromMap(
      Map<String, dynamic> map) {
    return ApiConfigGatewayConfigBackendConfig(
      googleServiceAccount: map['googleServiceAccount'] as String,
    );
  }
}

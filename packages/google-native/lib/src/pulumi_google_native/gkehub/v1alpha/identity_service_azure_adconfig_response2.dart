// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the AzureAD Auth flow.
class IdentityServiceAzureADConfigResponse2 {
  /// ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  final String clientId;

  /// Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  final String clientSecret;

  /// Encrypted AzureAD client secret.
  final String encryptedClientSecret;

  /// The redirect URL that kubectl uses for authorization.
  final String kubectlRedirectUri;

  /// Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  final String tenant;

  IdentityServiceAzureADConfigResponse2({
    required this.clientId,
    required this.clientSecret,
    required this.encryptedClientSecret,
    required this.kubectlRedirectUri,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['encryptedClientSecret'] = encryptedClientSecret;
    map['kubectlRedirectUri'] = kubectlRedirectUri;
    map['tenant'] = tenant;
    return map;
  }

  factory IdentityServiceAzureADConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceAzureADConfigResponse2(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      encryptedClientSecret: map['encryptedClientSecret'] as String,
      kubectlRedirectUri: map['kubectlRedirectUri'] as String,
      tenant: map['tenant'] as String,
    );
  }
}

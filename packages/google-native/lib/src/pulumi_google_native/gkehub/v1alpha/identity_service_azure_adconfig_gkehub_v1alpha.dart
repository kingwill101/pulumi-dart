// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the AzureAD Auth flow.
class IdentityServiceAzureADConfigGkehubV1alpha {
  /// ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  final String? clientId;

  /// Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  final String? clientSecret;

  /// The redirect URL that kubectl uses for authorization.
  final String? kubectlRedirectUri;

  /// Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  final String? tenant;

  IdentityServiceAzureADConfigGkehubV1alpha({
    this.clientId,
    this.clientSecret,
    this.kubectlRedirectUri,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final kubectlRedirectUriValue = kubectlRedirectUri;
    if (kubectlRedirectUriValue != null) {
      map['kubectlRedirectUri'] = kubectlRedirectUriValue;
    }
    final tenantValue = tenant;
    if (tenantValue != null) {
      map['tenant'] = tenantValue;
    }
    return map;
  }

  factory IdentityServiceAzureADConfigGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceAzureADConfigGkehubV1alpha(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      kubectlRedirectUri: map['kubectlRedirectUri'] == null
          ? null
          : map['kubectlRedirectUri'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
    );
  }
}

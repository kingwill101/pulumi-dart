// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the AzureAD Auth flow.
class IdentityServiceAzureADConfigGkehubV1beta {
  /// ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  final String? clientId;

  /// Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  final String? clientSecret;

  /// The redirect URL that kubectl uses for authorization.
  final String? kubectlRedirectUri;

  /// Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  final String? tenant;

  /// Creates a new [IdentityServiceAzureADConfigGkehubV1beta].
  /// [clientId] ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  /// [clientSecret] Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  /// [kubectlRedirectUri] The redirect URL that kubectl uses for authorization.
  /// [tenant] Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  IdentityServiceAzureADConfigGkehubV1beta({
    this.clientId,
    this.clientSecret,
    this.kubectlRedirectUri,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'tenant': ?tenant,
    };
  }

  factory IdentityServiceAzureADConfigGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceAzureADConfigGkehubV1beta(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : map['clientSecret'] as String,
      kubectlRedirectUri: map['kubectlRedirectUri'] == null
          ? null
          : map['kubectlRedirectUri'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
    );
  }
}

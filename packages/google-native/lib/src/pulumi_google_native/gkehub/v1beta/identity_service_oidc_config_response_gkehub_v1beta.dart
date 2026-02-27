// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfigResponseGkehubV1beta {
  /// PEM-encoded CA for OIDC provider.
  final String certificateAuthorityData;

  /// ID for OIDC client application.
  final String clientId;

  /// Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  final String clientSecret;

  /// Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  final bool deployCloudConsoleProxy;

  /// Enable access token.
  final bool enableAccessToken;

  /// Encrypted OIDC Client secret
  final String encryptedClientSecret;

  /// Comma-separated list of key-value pairs.
  final String extraParams;

  /// Prefix to prepend to group name.
  final String groupPrefix;

  /// Claim in OIDC ID token that holds group information.
  final String groupsClaim;

  /// URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  final String issuerUri;

  /// Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  final String kubectlRedirectUri;

  /// Comma-separated list of identifiers.
  final String scopes;

  /// Claim in OIDC ID token that holds username.
  final String userClaim;

  /// Prefix to prepend to user name.
  final String userPrefix;

  IdentityServiceOidcConfigResponseGkehubV1beta({
    required this.certificateAuthorityData,
    required this.clientId,
    required this.clientSecret,
    required this.deployCloudConsoleProxy,
    required this.enableAccessToken,
    required this.encryptedClientSecret,
    required this.extraParams,
    required this.groupPrefix,
    required this.groupsClaim,
    required this.issuerUri,
    required this.kubectlRedirectUri,
    required this.scopes,
    required this.userClaim,
    required this.userPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityData'] = certificateAuthorityData;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['deployCloudConsoleProxy'] = deployCloudConsoleProxy;
    map['enableAccessToken'] = enableAccessToken;
    map['encryptedClientSecret'] = encryptedClientSecret;
    map['extraParams'] = extraParams;
    map['groupPrefix'] = groupPrefix;
    map['groupsClaim'] = groupsClaim;
    map['issuerUri'] = issuerUri;
    map['kubectlRedirectUri'] = kubectlRedirectUri;
    map['scopes'] = scopes;
    map['userClaim'] = userClaim;
    map['userPrefix'] = userPrefix;
    return map;
  }

  factory IdentityServiceOidcConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceOidcConfigResponseGkehubV1beta(
      certificateAuthorityData: map['certificateAuthorityData'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      deployCloudConsoleProxy: map['deployCloudConsoleProxy'] as bool,
      enableAccessToken: map['enableAccessToken'] as bool,
      encryptedClientSecret: map['encryptedClientSecret'] as String,
      extraParams: map['extraParams'] as String,
      groupPrefix: map['groupPrefix'] as String,
      groupsClaim: map['groupsClaim'] as String,
      issuerUri: map['issuerUri'] as String,
      kubectlRedirectUri: map['kubectlRedirectUri'] as String,
      scopes: map['scopes'] as String,
      userClaim: map['userClaim'] as String,
      userPrefix: map['userPrefix'] as String,
    );
  }
}

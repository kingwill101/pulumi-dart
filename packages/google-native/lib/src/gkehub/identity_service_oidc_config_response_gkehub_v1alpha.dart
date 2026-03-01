// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfigResponseGkehubV1alpha {
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

  /// Creates a new [IdentityServiceOidcConfigResponseGkehubV1alpha].
  /// [certificateAuthorityData] PEM-encoded CA for OIDC provider.
  /// [clientId] ID for OIDC client application.
  /// [clientSecret] Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  /// [deployCloudConsoleProxy] Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  /// [enableAccessToken] Enable access token.
  /// [encryptedClientSecret] Encrypted OIDC Client secret
  /// [extraParams] Comma-separated list of key-value pairs.
  /// [groupPrefix] Prefix to prepend to group name.
  /// [groupsClaim] Claim in OIDC ID token that holds group information.
  /// [issuerUri] URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  /// [kubectlRedirectUri] Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  /// [scopes] Comma-separated list of identifiers.
  /// [userClaim] Claim in OIDC ID token that holds username.
  /// [userPrefix] Prefix to prepend to user name.
  IdentityServiceOidcConfigResponseGkehubV1alpha({
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
    return <String, dynamic>{
      'certificateAuthorityData': certificateAuthorityData,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'deployCloudConsoleProxy': deployCloudConsoleProxy,
      'enableAccessToken': enableAccessToken,
      'encryptedClientSecret': encryptedClientSecret,
      'extraParams': extraParams,
      'groupPrefix': groupPrefix,
      'groupsClaim': groupsClaim,
      'issuerUri': issuerUri,
      'kubectlRedirectUri': kubectlRedirectUri,
      'scopes': scopes,
      'userClaim': userClaim,
      'userPrefix': userPrefix,
    };
  }

  factory IdentityServiceOidcConfigResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceOidcConfigResponseGkehubV1alpha(
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

// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfigGkehubV1beta {
  /// PEM-encoded CA for OIDC provider.
  final String? certificateAuthorityData;
  /// ID for OIDC client application.
  final String? clientId;
  /// Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  final String? clientSecret;
  /// Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  final bool? deployCloudConsoleProxy;
  /// Enable access token.
  final bool? enableAccessToken;
  /// Comma-separated list of key-value pairs.
  final String? extraParams;
  /// Prefix to prepend to group name.
  final String? groupPrefix;
  /// Claim in OIDC ID token that holds group information.
  final String? groupsClaim;
  /// URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  final String? issuerUri;
  /// Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  final String? kubectlRedirectUri;
  /// Comma-separated list of identifiers.
  final String? scopes;
  /// Claim in OIDC ID token that holds username.
  final String? userClaim;
  /// Prefix to prepend to user name.
  final String? userPrefix;

  /// Creates a new [IdentityServiceOidcConfigGkehubV1beta].
  /// [certificateAuthorityData] PEM-encoded CA for OIDC provider.
  /// [clientId] ID for OIDC client application.
  /// [clientSecret] Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  /// [deployCloudConsoleProxy] Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  /// [enableAccessToken] Enable access token.
  /// [extraParams] Comma-separated list of key-value pairs.
  /// [groupPrefix] Prefix to prepend to group name.
  /// [groupsClaim] Claim in OIDC ID token that holds group information.
  /// [issuerUri] URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  /// [kubectlRedirectUri] Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  /// [scopes] Comma-separated list of identifiers.
  /// [userClaim] Claim in OIDC ID token that holds username.
  /// [userPrefix] Prefix to prepend to user name.
  IdentityServiceOidcConfigGkehubV1beta({
    this.certificateAuthorityData,
    this.clientId,
    this.clientSecret,
    this.deployCloudConsoleProxy,
    this.enableAccessToken,
    this.extraParams,
    this.groupPrefix,
    this.groupsClaim,
    this.issuerUri,
    this.kubectlRedirectUri,
    this.scopes,
    this.userClaim,
    this.userPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityData': ?certificateAuthorityData,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'deployCloudConsoleProxy': ?deployCloudConsoleProxy,
      'enableAccessToken': ?enableAccessToken,
      'extraParams': ?extraParams,
      'groupPrefix': ?groupPrefix,
      'groupsClaim': ?groupsClaim,
      'issuerUri': ?issuerUri,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'scopes': ?scopes,
      'userClaim': ?userClaim,
      'userPrefix': ?userPrefix,
    };
  }

  factory IdentityServiceOidcConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceOidcConfigGkehubV1beta(
      certificateAuthorityData: map['certificateAuthorityData'] == null ? null : map['certificateAuthorityData'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      deployCloudConsoleProxy: map['deployCloudConsoleProxy'] == null ? null : map['deployCloudConsoleProxy'] as bool,
      enableAccessToken: map['enableAccessToken'] == null ? null : map['enableAccessToken'] as bool,
      extraParams: map['extraParams'] == null ? null : map['extraParams'] as String,
      groupPrefix: map['groupPrefix'] == null ? null : map['groupPrefix'] as String,
      groupsClaim: map['groupsClaim'] == null ? null : map['groupsClaim'] as String,
      issuerUri: map['issuerUri'] == null ? null : map['issuerUri'] as String,
      kubectlRedirectUri: map['kubectlRedirectUri'] == null ? null : map['kubectlRedirectUri'] as String,
      scopes: map['scopes'] == null ? null : map['scopes'] as String,
      userClaim: map['userClaim'] == null ? null : map['userClaim'] as String,
      userPrefix: map['userPrefix'] == null ? null : map['userPrefix'] as String,
    );
  }
}


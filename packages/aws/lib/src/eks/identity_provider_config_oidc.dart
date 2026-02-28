// ignore_for_file: unused_element, unnecessary_cast

class IdentityProviderConfigOidc {
  /// Client ID for the OpenID Connect identity provider.
  final String clientId;

  /// The JWT claim that the provider will use to return groups.
  final String? groupsClaim;

  /// A prefix that is prepended to group claims e.g., `oidc:`.
  final String? groupsPrefix;

  /// The name of the identity provider config.
  final String identityProviderConfigName;

  /// Issuer URL for the OpenID Connect identity provider.
  final String issuerUrl;

  /// The key value pairs that describe required claims in the identity token.
  final Map<String, String>? requiredClaims;

  /// The JWT claim that the provider will use as the username.
  final String? usernameClaim;

  /// A prefix that is prepended to username claims.
  final String? usernamePrefix;

  /// Creates a new [IdentityProviderConfigOidc].
  /// [clientId] Client ID for the OpenID Connect identity provider.
  /// [groupsClaim] The JWT claim that the provider will use to return groups.
  /// [groupsPrefix] A prefix that is prepended to group claims e.g., `oidc:`.
  /// [identityProviderConfigName] The name of the identity provider config.
  /// [issuerUrl] Issuer URL for the OpenID Connect identity provider.
  /// [requiredClaims] The key value pairs that describe required claims in the identity token.
  /// [usernameClaim] The JWT claim that the provider will use as the username.
  /// [usernamePrefix] A prefix that is prepended to username claims.
  IdentityProviderConfigOidc({
    required this.clientId,
    this.groupsClaim,
    this.groupsPrefix,
    required this.identityProviderConfigName,
    required this.issuerUrl,
    this.requiredClaims,
    this.usernameClaim,
    this.usernamePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    final groupsClaimValue = groupsClaim;
    if (groupsClaimValue != null) {
      map['groupsClaim'] = groupsClaimValue;
    }
    final groupsPrefixValue = groupsPrefix;
    if (groupsPrefixValue != null) {
      map['groupsPrefix'] = groupsPrefixValue;
    }
    map['identityProviderConfigName'] = identityProviderConfigName;
    map['issuerUrl'] = issuerUrl;
    final requiredClaimsValue = requiredClaims;
    if (requiredClaimsValue != null) {
      map['requiredClaims'] = requiredClaimsValue;
    }
    final usernameClaimValue = usernameClaim;
    if (usernameClaimValue != null) {
      map['usernameClaim'] = usernameClaimValue;
    }
    final usernamePrefixValue = usernamePrefix;
    if (usernamePrefixValue != null) {
      map['usernamePrefix'] = usernamePrefixValue;
    }
    return map;
  }

  factory IdentityProviderConfigOidc.fromMap(Map<String, dynamic> map) {
    return IdentityProviderConfigOidc(
      clientId: map['clientId'] as String,
      groupsClaim:
          map['groupsClaim'] == null ? null : map['groupsClaim'] as String,
      groupsPrefix:
          map['groupsPrefix'] == null ? null : map['groupsPrefix'] as String,
      identityProviderConfigName: map['identityProviderConfigName'] as String,
      issuerUrl: map['issuerUrl'] as String,
      requiredClaims: map['requiredClaims'] == null
          ? null
          : (map['requiredClaims'] as Map).cast<String, String>(),
      usernameClaim:
          map['usernameClaim'] == null ? null : map['usernameClaim'] as String,
      usernamePrefix: map['usernamePrefix'] == null
          ? null
          : map['usernamePrefix'] as String,
    );
  }
}

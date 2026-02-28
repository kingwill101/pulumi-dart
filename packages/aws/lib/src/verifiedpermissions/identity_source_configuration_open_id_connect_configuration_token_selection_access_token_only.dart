// ignore_for_file: unused_element, unnecessary_cast

class IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly {
  /// The access token aud claim values that you want to accept in your policy store.
  final List<String>? audiences;

  /// The claim that determines the principal in OIDC access tokens.
  final String? principalIdClaim;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly].
  /// [audiences] The access token aud claim values that you want to accept in your policy store.
  /// [principalIdClaim] The claim that determines the principal in OIDC access tokens.
  IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly({
    this.audiences,
    this.principalIdClaim,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audiencesValue = audiences;
    if (audiencesValue != null) {
      map['audiences'] = audiencesValue;
    }
    final principalIdClaimValue = principalIdClaim;
    if (principalIdClaimValue != null) {
      map['principalIdClaim'] = principalIdClaimValue;
    }
    return map;
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly(
      audiences: map['audiences'] == null
          ? null
          : (map['audiences'] as List).cast<String>(),
      principalIdClaim: map['principalIdClaim'] == null
          ? null
          : map['principalIdClaim'] as String,
    );
  }
}

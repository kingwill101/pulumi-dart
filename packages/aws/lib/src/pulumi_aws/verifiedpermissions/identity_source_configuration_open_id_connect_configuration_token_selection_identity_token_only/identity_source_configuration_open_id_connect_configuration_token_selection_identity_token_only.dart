// ignore_for_file: unused_element, unnecessary_cast

class IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly {
  /// The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider.
  final List<String>? clientIds;

  /// The claim that determines the principal in OIDC identity tokens.
  final String? principalIdClaim;

  IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly({
    this.clientIds,
    this.principalIdClaim,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdsValue = clientIds;
    if (clientIdsValue != null) {
      map['clientIds'] = clientIdsValue;
    }
    final principalIdClaimValue = principalIdClaim;
    if (principalIdClaimValue != null) {
      map['principalIdClaim'] = principalIdClaimValue;
    }
    return map;
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly(
      clientIds: map['clientIds'] == null
          ? null
          : (map['clientIds'] as List).cast<String>(),
      principalIdClaim: map['principalIdClaim'] == null
          ? null
          : map['principalIdClaim'] as String,
    );
  }
}

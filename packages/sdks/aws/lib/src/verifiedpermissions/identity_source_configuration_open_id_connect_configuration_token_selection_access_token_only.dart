// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly {
  /// The access token aud claim values that you want to accept in your policy store.
  final pulumi.Input<List<String>>? audiences;
  /// The claim that determines the principal in OIDC access tokens.
  final pulumi.Input<String>? principalIdClaim;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly].
  /// [audiences] The access token aud claim values that you want to accept in your policy store.
  /// [principalIdClaim] The claim that determines the principal in OIDC access tokens.
  IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly({
    this.audiences,
    this.principalIdClaim,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'principalIdClaim': ?principalIdClaim,
    };
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionAccessTokenOnly(
      audiences: map['audiences'] == null ? null : (((map['audiences'] as List).cast<String>()).input()).input(),
      principalIdClaim: map['principalIdClaim'] == null ? null : ((map['principalIdClaim'] as String).input()).input(),
    );
  }
}


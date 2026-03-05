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
      audiences: (() { final guardedValue = map['audiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalIdClaim: (() { final guardedValue = map['principalIdClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


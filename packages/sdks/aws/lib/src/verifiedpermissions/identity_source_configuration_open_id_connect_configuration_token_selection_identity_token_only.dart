// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly {
  /// The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider.
  final pulumi.Input<List<String>>? clientIds;
  /// The claim that determines the principal in OIDC identity tokens.
  final pulumi.Input<String>? principalIdClaim;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly].
  /// [clientIds] The ID token audience, or client ID, claim values that you want to accept in your policy store from an OIDC identity provider.
  /// [principalIdClaim] The claim that determines the principal in OIDC identity tokens.
  const IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly({
    this.clientIds,
    this.principalIdClaim,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'principalIdClaim': ?principalIdClaim,
    };
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationTokenSelectionIdentityTokenOnly(
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalIdClaim: (() { final guardedValue = map['principalIdClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


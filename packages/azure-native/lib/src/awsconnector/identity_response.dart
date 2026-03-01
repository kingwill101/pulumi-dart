// ignore_for_file: unused_element, unnecessary_cast

import 'oidcresponse.dart';

/// Definition of Identity
class IdentityResponse {
  /// <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  final OIDCResponse? oidc;

  /// Creates a new [IdentityResponse].
  /// [oidc] <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  IdentityResponse({
    this.oidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidc': ?oidc == null ? null : oidc!.toMap(),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      oidc: map['oidc'] == null ? null : OIDCResponse.fromMap((map['oidc'] as Map).cast<String, dynamic>()),
    );
  }
}


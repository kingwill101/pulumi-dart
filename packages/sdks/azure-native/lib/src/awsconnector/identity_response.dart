// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidcresponse.dart';

/// Definition of Identity
class IdentityResponse {
  /// <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  final pulumi.Input<OIDCResponse>? oidc;

  /// Creates a new [IdentityResponse].
  /// [oidc] <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  IdentityResponse({
    this.oidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidc': ?pulumi.Input.mapOptionalInputValue<OIDCResponse, Map<String, dynamic>>(oidc, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      oidc: map['oidc'] == null ? null : (OIDCResponse.fromMap((map['oidc']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OIDC
class OIDCResponse {
  /// <p>The issuer URL for the OIDC identity provider.</p>
  final pulumi.Input<String>? issuer;

  /// Creates a new [OIDCResponse].
  /// [issuer] <p>The issuer URL for the OIDC identity provider.</p>
  OIDCResponse({
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': ?issuer,
    };
  }

  factory OIDCResponse.fromMap(Map<String, dynamic> map) {
    return OIDCResponse(
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
    );
  }
}


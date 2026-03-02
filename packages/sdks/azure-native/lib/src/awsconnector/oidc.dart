// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OIDC
class OIDC {
  /// <p>The issuer URL for the OIDC identity provider.</p>
  final pulumi.Input<String>? issuer;

  /// Creates a new [OIDC].
  /// [issuer] <p>The issuer URL for the OIDC identity provider.</p>
  OIDC({
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': ?issuer,
    };
  }

  factory OIDC.fromMap(Map<String, dynamic> map) {
    return OIDC(
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
    );
  }
}


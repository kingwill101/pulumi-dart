// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidc.dart';

/// Definition of Identity
class Identity {
  /// <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  final pulumi.Input<OIDC>? oidc;

  /// Creates a new [Identity].
  /// [oidc] <p>An object representing the <a href='https://openid.net/connect/'>OpenID Connect</a> identity provider information.</p>
  Identity({
    this.oidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidc': ?pulumi.Input.mapOptionalInputValue<OIDC, Map<String, dynamic>>(oidc, (value) => value.toMap()),
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      oidc: map['oidc'] == null ? null : (OIDC.fromMap((map['oidc']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


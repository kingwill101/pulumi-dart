// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidc.dart';

/// Definition of Identity
class Identity {
  /// &lt;p&gt;An object representing the &lt;a href='https://openid.net/connect/'&gt;OpenID Connect&lt;/a&gt; identity provider information.&lt;/p&gt;
  final pulumi.Input<OIDC>? oidc;

  /// Creates a new [Identity].
  /// [oidc] &lt;p&gt;An object representing the &lt;a href='https://openid.net/connect/'&gt;OpenID Connect&lt;/a&gt; identity provider information.&lt;/p&gt;
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
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OIDC.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


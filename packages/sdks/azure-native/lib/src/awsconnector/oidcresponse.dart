// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OIDC
class OIDCResponse {
  /// &lt;p&gt;The issuer URL for the OIDC identity provider.&lt;/p&gt;
  final pulumi.Input<String>? issuer;

  /// Creates a new [OIDCResponse].
  /// [issuer] &lt;p&gt;The issuer URL for the OIDC identity provider.&lt;/p&gt;
  OIDCResponse({this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'issuer': ?issuer};
  }

  factory OIDCResponse.fromMap(Map<String, dynamic> map) {
    return OIDCResponse(
      issuer: (() {
        final guardedValue = map['issuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

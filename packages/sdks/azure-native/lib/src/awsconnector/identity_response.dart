// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidcresponse.dart';

/// Definition of Identity
class IdentityResponse {
  /// &lt;p&gt;An object representing the &lt;a href='https://openid.net/connect/'&gt;OpenID Connect&lt;/a&gt; identity provider information.&lt;/p&gt;
  final pulumi.Input<OIDCResponse>? oidc;

  /// Creates a new [IdentityResponse].
  /// [oidc] &lt;p&gt;An object representing the &lt;a href='https://openid.net/connect/'&gt;OpenID Connect&lt;/a&gt; identity provider information.&lt;/p&gt;
  IdentityResponse({this.oidc});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oidc':
          ?pulumi.Input.mapOptionalInputValue<
            OIDCResponse,
            Map<String, dynamic>
          >(oidc, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      oidc: (() {
        final guardedValue = map['oidc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OIDCResponse.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}

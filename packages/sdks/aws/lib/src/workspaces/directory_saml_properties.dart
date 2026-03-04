// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectorySamlProperties {
  /// The relay state parameter name supported by the SAML 2.0 identity provider (IdP). Default `RelayState`.
  final pulumi.Input<String>? relayStateParameterName;

  /// Status of SAML 2.0 authentication. Default `DISABLED`.
  final pulumi.Input<String>? status;

  /// The SAML 2.0 identity provider (IdP) user access URL.
  final pulumi.Input<String>? userAccessUrl;

  /// Creates a new [DirectorySamlProperties].
  /// [relayStateParameterName] The relay state parameter name supported by the SAML 2.0 identity provider (IdP). Default `RelayState`.
  /// [status] Status of SAML 2.0 authentication. Default `DISABLED`.
  /// [userAccessUrl] The SAML 2.0 identity provider (IdP) user access URL.
  DirectorySamlProperties({
    this.relayStateParameterName,
    this.status,
    this.userAccessUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayStateParameterName': ?relayStateParameterName,
      'status': ?status,
      'userAccessUrl': ?userAccessUrl,
    };
  }

  factory DirectorySamlProperties.fromMap(Map<String, dynamic> map) {
    return DirectorySamlProperties(
      relayStateParameterName: (() {
        final guardedValue = map['relayStateParameterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAccessUrl: (() {
        final guardedValue = map['userAccessUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

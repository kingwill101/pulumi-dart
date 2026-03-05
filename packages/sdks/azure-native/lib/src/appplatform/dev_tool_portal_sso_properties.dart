// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Single sign-on related configuration
class DevToolPortalSsoProperties {
  /// The public identifier for the application
  final pulumi.Input<String>? clientId;
  /// The secret known only to the application and the authorization server
  final pulumi.Input<String>? clientSecret;
  /// The URI of a JSON file with generic OIDC provider configuration.
  final pulumi.Input<String>? metadataUrl;
  /// It defines the specific actions applications can be allowed to do on a user's behalf
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [DevToolPortalSsoProperties].
  /// [clientId] The public identifier for the application
  /// [clientSecret] The secret known only to the application and the authorization server
  /// [metadataUrl] The URI of a JSON file with generic OIDC provider configuration.
  /// [scopes] It defines the specific actions applications can be allowed to do on a user's behalf
  DevToolPortalSsoProperties({
    this.clientId,
    this.clientSecret,
    this.metadataUrl,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'metadataUrl': ?metadataUrl,
      'scopes': ?scopes,
    };
  }

  factory DevToolPortalSsoProperties.fromMap(Map<String, dynamic> map) {
    return DevToolPortalSsoProperties(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataUrl: (() { final guardedValue = map['metadataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


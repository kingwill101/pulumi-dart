// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Single sign-on related configuration
class DevToolPortalSsoPropertiesResponse {
  /// The public identifier for the application
  final pulumi.Input<String>? clientId;
  /// The secret known only to the application and the authorization server
  final pulumi.Input<String>? clientSecret;
  /// The URI of a JSON file with generic OIDC provider configuration.
  final pulumi.Input<String>? metadataUrl;
  /// It defines the specific actions applications can be allowed to do on a user's behalf
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [DevToolPortalSsoPropertiesResponse].
  /// [clientId] The public identifier for the application
  /// [clientSecret] The secret known only to the application and the authorization server
  /// [metadataUrl] The URI of a JSON file with generic OIDC provider configuration.
  /// [scopes] It defines the specific actions applications can be allowed to do on a user's behalf
  DevToolPortalSsoPropertiesResponse({
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

  factory DevToolPortalSsoPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalSsoPropertiesResponse(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      metadataUrl: map['metadataUrl'] == null ? null : (map['metadataUrl']! as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
    );
  }
}


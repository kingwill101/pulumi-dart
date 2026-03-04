// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Resource ID for a Frontend Endpoint.
class FrontendEndpointLinkResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [FrontendEndpointLinkResponse].
  /// [id] Resource ID.
  FrontendEndpointLinkResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory FrontendEndpointLinkResponse.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointLinkResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

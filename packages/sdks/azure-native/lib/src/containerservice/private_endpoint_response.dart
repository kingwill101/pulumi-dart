// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint which a connection belongs to.
class PrivateEndpointResponse {
  /// The resource ID of the private endpoint
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The resource ID of the private endpoint
  PrivateEndpointResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

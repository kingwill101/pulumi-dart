// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint resource.
class PrivateEndpointResponse {
  /// This is private endpoint resource created with Microsoft.Network resource provider.
  final pulumi.Input<String?>? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] This is private endpoint resource created with Microsoft.Network resource provider.
  const PrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

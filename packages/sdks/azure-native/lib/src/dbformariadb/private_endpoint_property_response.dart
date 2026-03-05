// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateEndpointPropertyResponse {
  /// Resource id of the private endpoint.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointPropertyResponse].
  /// [id] Resource id of the private endpoint.
  PrivateEndpointPropertyResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointPropertyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointPropertyResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


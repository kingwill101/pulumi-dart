// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent private Endpoint network resource that is linked to the Private Endpoint connection.
class PrivateEndpointResponse {
  /// Gets or sets the id.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Gets or sets the id.
  PrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}


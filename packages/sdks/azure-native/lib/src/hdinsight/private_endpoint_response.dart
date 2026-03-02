// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint.
class PrivateEndpointResponse {
  /// The private endpoint id.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The private endpoint id.
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


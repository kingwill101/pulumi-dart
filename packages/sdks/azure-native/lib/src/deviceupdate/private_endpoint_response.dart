// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Private Endpoint resource.
class PrivateEndpointResponse {
  /// The ARM identifier for Private Endpoint
  final pulumi.Input<String> id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The ARM identifier for Private Endpoint
  PrivateEndpointResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}


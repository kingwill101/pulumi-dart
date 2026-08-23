// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private endpoint resource.
class PrivateEndpointResponse {
  /// The ARM identifier for private endpoint.
  final pulumi.Input<String> id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The ARM identifier for private endpoint.
  const PrivateEndpointResponse({
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

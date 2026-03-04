// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint object properties.
class PrivateEndpointResponse {
  /// Full identifier of the private endpoint resource.
  final pulumi.Input<String> id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Full identifier of the private endpoint resource.
  PrivateEndpointResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

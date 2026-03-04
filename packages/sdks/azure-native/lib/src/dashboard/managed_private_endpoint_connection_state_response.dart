// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of managed private endpoint connection.
class ManagedPrivateEndpointConnectionStateResponse {
  /// Gets or sets the reason for approval/rejection of the connection.
  final pulumi.Input<String> description;

  /// The approval/rejection status of managed private endpoint connection.
  final pulumi.Input<String> status;

  /// Creates a new [ManagedPrivateEndpointConnectionStateResponse].
  /// [description] Gets or sets the reason for approval/rejection of the connection.
  /// [status] The approval/rejection status of managed private endpoint connection.
  ManagedPrivateEndpointConnectionStateResponse({
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'status': status};
  }

  factory ManagedPrivateEndpointConnectionStateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedPrivateEndpointConnectionStateResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

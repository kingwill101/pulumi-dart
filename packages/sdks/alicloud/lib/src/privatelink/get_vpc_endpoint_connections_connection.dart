// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointConnectionsConnection {
  /// The Bandwidth.
  final pulumi.Input<int> bandwidth;
  /// The ID of the Vpc Endpoint.
  final pulumi.Input<String> endpointId;
  /// The ID of the Vpc Endpoint Connection.
  final pulumi.Input<String> id;
  /// The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  final pulumi.Input<String> status;

  /// Creates a new [GetVpcEndpointConnectionsConnection].
  /// [bandwidth] The Bandwidth.
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [id] The ID of the Vpc Endpoint Connection.
  /// [status] The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  const GetVpcEndpointConnectionsConnection({
    required this.bandwidth,
    required this.endpointId,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'endpointId': endpointId,
      'id': id,
      'status': status,
    };
  }

  factory GetVpcEndpointConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointConnectionsConnection(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}


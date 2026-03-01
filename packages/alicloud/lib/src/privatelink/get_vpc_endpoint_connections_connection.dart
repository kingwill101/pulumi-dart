// ignore_for_file: unused_element, unnecessary_cast


class GetVpcEndpointConnectionsConnection {
  /// The Bandwidth.
  final int bandwidth;
  /// The ID of the Vpc Endpoint.
  final String endpointId;
  /// The ID of the Vpc Endpoint Connection.
  final String id;
  /// The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  final String status;

  /// Creates a new [GetVpcEndpointConnectionsConnection].
  /// [bandwidth] The Bandwidth.
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [id] The ID of the Vpc Endpoint Connection.
  /// [status] The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  GetVpcEndpointConnectionsConnection({
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
      bandwidth: map['bandwidth'] as int,
      endpointId: map['endpointId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetServiceEndpointConnectionsPrivateEndpointConnection {
  /// A message indicating if changes on the service provider require any updates or not.
  final String actionRequired;
  /// The resource id of the private link service connection between the private link service and the private link endpoint.
  final String connectionId;
  /// The name of the connection between the private link service and the private link endpoint.
  final String connectionName;
  /// The request for approval message or the reason for rejection message.
  final String description;
  /// The resource id of the private link endpoint.
  final String privateEndpointId;
  /// The name of the private link endpoint.
  final String privateEndpointName;
  /// Indicates the state of the connection between the private link service and the private link endpoint, possible values are `Pending`, `Approved` or `Rejected`.
  final String status;

  /// Creates a new [GetServiceEndpointConnectionsPrivateEndpointConnection].
  /// [actionRequired] A message indicating if changes on the service provider require any updates or not.
  /// [connectionId] The resource id of the private link service connection between the private link service and the private link endpoint.
  /// [connectionName] The name of the connection between the private link service and the private link endpoint.
  /// [description] The request for approval message or the reason for rejection message.
  /// [privateEndpointId] The resource id of the private link endpoint.
  /// [privateEndpointName] The name of the private link endpoint.
  /// [status] Indicates the state of the connection between the private link service and the private link endpoint, possible values are `Pending`, `Approved` or `Rejected`.
  GetServiceEndpointConnectionsPrivateEndpointConnection({
    required this.actionRequired,
    required this.connectionId,
    required this.connectionName,
    required this.description,
    required this.privateEndpointId,
    required this.privateEndpointName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': actionRequired,
      'connectionId': connectionId,
      'connectionName': connectionName,
      'description': description,
      'privateEndpointId': privateEndpointId,
      'privateEndpointName': privateEndpointName,
      'status': status,
    };
  }

  factory GetServiceEndpointConnectionsPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointConnectionsPrivateEndpointConnection(
      actionRequired: map['actionRequired'] as String,
      connectionId: map['connectionId'] as String,
      connectionName: map['connectionName'] as String,
      description: map['description'] as String,
      privateEndpointId: map['privateEndpointId'] as String,
      privateEndpointName: map['privateEndpointName'] as String,
      status: map['status'] as String,
    );
  }
}


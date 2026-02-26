// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'application_endpoint.dart';
import 'connection_type.dart';
import 'gateway.dart';

/// The set of arguments for Connection.
class ConnectionArgs {
  /// Address of the remote application endpoint for the BeyondCorp Connection.
  final Input<ApplicationEndpoint> applicationEndpoint;

  /// Optional. User-settable connection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final Input<String>? connectionId;

  /// Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this Connection.
  final Input<List<String>>? connectors;

  /// Optional. An arbitrary user-provided name for the connection. Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// Optional. Gateway used by the connection.
  final Input<Gateway>? gateway;

  /// Optional. Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Unique resource name of the connection. The name is ignored when creating a connection.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The type of network connectivity used by the connection.
  final Input<ConnectionType> type;

  ConnectionArgs({
    required this.applicationEndpoint,
    this.connectionId,
    this.connectors,
    this.displayName,
    this.gateway,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationEndpoint'] =
        Input.mapInputValue<ApplicationEndpoint, Map<String, dynamic>>(
            applicationEndpoint, (value) => value.toMap());
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final connectorsValue = connectors;
    if (connectorsValue != null) {
      map['connectors'] = connectorsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gatewayValue = gateway;
    if (gatewayValue != null) {
      map['gateway'] =
          Input.mapOptionalInputValue<Gateway, Map<String, dynamic>>(
              gatewayValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['type'] = Input.mapInputValue<ConnectionType, String>(
        type, (value) => value.value);
    return map;
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      applicationEndpoint:
          Input.asInput<ApplicationEndpoint>(map['applicationEndpoint']),
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      connectors: Input.asOptionalInput<List<String>>(map['connectors']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gateway: Input.asOptionalInput<Gateway>(map['gateway']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      type: Input.asInput<ConnectionType>(map['type']),
    );
  }
}

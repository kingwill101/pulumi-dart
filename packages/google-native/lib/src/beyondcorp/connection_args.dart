// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_endpoint.dart';
import 'connection_type.dart';
import 'gateway.dart';

/// {@template pulumi_beyondcorp_v1alpha_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_connection_args_doc}
class ConnectionArgs {
  /// Address of the remote application endpoint for the BeyondCorp Connection.
  final pulumi.Input<ApplicationEndpoint> applicationEndpoint;
  /// Optional. User-settable connection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? connectionId;
  /// Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this Connection.
  final pulumi.Input<List<String>>? connectors;
  /// Optional. An arbitrary user-provided name for the connection. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Gateway used by the connection.
  final pulumi.Input<Gateway>? gateway;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the connection. The name is ignored when creating a connection.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of network connectivity used by the connection.
  final pulumi.Input<ConnectionType> type;

  /// Creates a new [ConnectionArgs].
  /// [applicationEndpoint] Address of the remote application endpoint for the BeyondCorp Connection.
  /// [connectionId] Optional. User-settable connection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [connectors] Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this Connection.
  /// [displayName] Optional. An arbitrary user-provided name for the connection. Cannot exceed 64 characters.
  /// [gateway] Optional. Gateway used by the connection.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the connection. The name is ignored when creating a connection.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of network connectivity used by the connection.
  ConnectionArgs({
    required ApplicationEndpoint applicationEndpoint,
    String? connectionId,
    List<String>? connectors,
    String? displayName,
    Gateway? gateway,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    required ConnectionType type,
  }) :
      applicationEndpoint = pulumi.Input.asInput<ApplicationEndpoint>(applicationEndpoint),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      connectors = pulumi.Input.asOptionalInput<List<String>>(connectors),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gateway = pulumi.Input.asOptionalInput<Gateway>(gateway),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asInput<ConnectionType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoint': pulumi.Input.mapInputValue<ApplicationEndpoint, Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap()),
      'connectionId': ?connectionId,
      'connectors': ?connectors,
      'displayName': ?displayName,
      'gateway': ?pulumi.Input.mapOptionalInputValue<Gateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<ConnectionType, String>(type, (value) => value.value),
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      applicationEndpoint: ApplicationEndpoint.fromMap((map['applicationEndpoint'] as Map).cast<String, dynamic>()),
      connectionId: map['connectionId'] == null ? null : map['connectionId'] as String,
      connectors: map['connectors'] == null ? null : (map['connectors'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gateway: map['gateway'] == null ? null : Gateway.fromMap((map['gateway'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      type: ConnectionType.fromValue(map['type'] as String),
    );
  }
}


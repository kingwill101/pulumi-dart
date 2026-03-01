// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_route_args_doc}
class RouteArgs {
  /// Destination address for connection
  final pulumi.Input<String> destinationAddress;

  /// Destination port for connection
  final pulumi.Input<int>? destinationPort;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Required. The Route identifier.
  final pulumi.Input<String> routeId;

  /// Creates a new [RouteArgs].
  /// [destinationAddress] Destination address for connection
  /// [destinationPort] Destination port for connection
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [location] Optional.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [routeId] Required. The Route identifier.
  RouteArgs({
    required String destinationAddress,
    int? destinationPort,
    required String displayName,
    Map<String, String>? labels,
    String? location,
    required String privateConnectionId,
    String? project,
    String? requestId,
    required String routeId,
  }) : destinationAddress = pulumi.Input.asInput<String>(destinationAddress),
       destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
       displayName = pulumi.Input.asInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       routeId = pulumi.Input.asInput<String>(routeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'destinationPort': ?destinationPort,
      'displayName': displayName,
      'labels': ?labels,
      'location': ?location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'requestId': ?requestId,
      'routeId': routeId,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      destinationAddress: map['destinationAddress'] as String,
      destinationPort: map['destinationPort'] == null
          ? null
          : map['destinationPort'] as int,
      displayName: map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      routeId: map['routeId'] as String,
    );
  }
}

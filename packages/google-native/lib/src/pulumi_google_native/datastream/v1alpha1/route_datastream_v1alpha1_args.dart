// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Route.
class RouteDatastreamV1alpha1Args {
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

  RouteDatastreamV1alpha1Args({
    required this.destinationAddress,
    this.destinationPort,
    required this.displayName,
    this.labels,
    this.location,
    required this.privateConnectionId,
    this.project,
    this.requestId,
    required this.routeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationAddress'] = destinationAddress;
    final destinationPortValue = destinationPort;
    if (destinationPortValue != null) {
      map['destinationPort'] = destinationPortValue;
    }
    map['displayName'] = displayName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['routeId'] = routeId;
    return map;
  }

  factory RouteDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return RouteDatastreamV1alpha1Args(
      destinationAddress:
          pulumi.Input.asInput<String>(map['destinationAddress']),
      destinationPort:
          pulumi.Input.asOptionalInput<int>(map['destinationPort']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      routeId: pulumi.Input.asInput<String>(map['routeId']),
    );
  }
}

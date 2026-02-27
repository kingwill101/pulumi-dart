// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_severity.dart';

/// The set of arguments for Endpoint.
class EndpointIdsV1Args {
  /// User-provided description of the endpoint
  final pulumi.Input<String>? description;

  /// Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. Values that do not match this pattern will trigger an INVALID_ARGUMENT error.
  final pulumi.Input<String> endpointId;

  /// The labels of the endpoint.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The fully qualified URL of the network to which the IDS Endpoint is attached.
  final pulumi.Input<String> network;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Lowest threat severity that this endpoint will alert on.
  final pulumi.Input<EndpointSeverity> severity;

  /// List of threat IDs to be excepted from generating alerts.
  final pulumi.Input<List<String>>? threatExceptions;

  /// Whether the endpoint should report traffic logs in addition to threat logs.
  final pulumi.Input<bool>? trafficLogs;

  EndpointIdsV1Args({
    this.description,
    required this.endpointId,
    this.labels,
    this.location,
    required this.network,
    this.project,
    this.requestId,
    required this.severity,
    this.threatExceptions,
    this.trafficLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['endpointId'] = endpointId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['severity'] = pulumi.Input.mapInputValue<EndpointSeverity, String>(
        severity, (value) => value.value);
    final threatExceptionsValue = threatExceptions;
    if (threatExceptionsValue != null) {
      map['threatExceptions'] = threatExceptionsValue;
    }
    final trafficLogsValue = trafficLogs;
    if (trafficLogsValue != null) {
      map['trafficLogs'] = trafficLogsValue;
    }
    return map;
  }

  factory EndpointIdsV1Args.fromMap(Map<String, dynamic> map) {
    return EndpointIdsV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      severity: pulumi.Input.asInput<EndpointSeverity>(map['severity']),
      threatExceptions:
          pulumi.Input.asOptionalInput<List<String>>(map['threatExceptions']),
      trafficLogs: pulumi.Input.asOptionalInput<bool>(map['trafficLogs']),
    );
  }
}

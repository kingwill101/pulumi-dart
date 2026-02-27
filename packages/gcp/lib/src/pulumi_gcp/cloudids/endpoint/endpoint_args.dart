// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Endpoint.
class EndpointArgs {
  /// An optional description of the endpoint.
  final pulumi.Input<String>? description;

  /// The location for the endpoint.
  final pulumi.Input<String> location;

  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  final pulumi.Input<String>? name;

  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String> severity;

  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  final pulumi.Input<List<String>>? threatExceptions;

  EndpointArgs({
    this.description,
    required this.location,
    this.name,
    required this.network,
    this.project,
    required this.severity,
    this.threatExceptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['severity'] = severity;
    final threatExceptionsValue = threatExceptions;
    if (threatExceptionsValue != null) {
      map['threatExceptions'] = threatExceptionsValue;
    }
    return map;
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      severity: pulumi.Input.asInput<String>(map['severity']),
      threatExceptions:
          pulumi.Input.asOptionalInput<List<String>>(map['threatExceptions']),
    );
  }
}

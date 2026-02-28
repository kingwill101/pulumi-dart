// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudids_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_cloudids_endpoint_endpoint_args_doc}
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

  /// Creates a new [EndpointArgs].
  /// [description] An optional description of the endpoint.
  /// [location] The location for the endpoint.
  /// [name] Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  /// [network] Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The minimum alert severity level that is reported by the endpoint.
  /// [threatExceptions] Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  EndpointArgs({
    String? description,
    required String location,
    String? name,
    required String network,
    String? project,
    required String severity,
    List<String>? threatExceptions,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        severity = pulumi.Input.asInput<String>(severity),
        threatExceptions =
            pulumi.Input.asOptionalInput<List<String>>(threatExceptions);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      severity: map['severity'] as String,
      threatExceptions: map['threatExceptions'] == null
          ? null
          : (map['threatExceptions'] as List).cast<String>(),
    );
  }
}

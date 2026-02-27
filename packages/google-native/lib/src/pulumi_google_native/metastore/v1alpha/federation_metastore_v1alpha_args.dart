// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Federation.
class FederationMetastoreV1alphaArgs {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  final pulumi.Input<Map<String, String>>? backendMetastores;

  /// Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> federationId;

  /// User-defined labels for the metastore federation.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;

  /// Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final pulumi.Input<String>? version;

  FederationMetastoreV1alphaArgs({
    this.backendMetastores,
    required this.federationId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendMetastoresValue = backendMetastores;
    if (backendMetastoresValue != null) {
      map['backendMetastores'] = backendMetastoresValue;
    }
    map['federationId'] = federationId;
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
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory FederationMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return FederationMetastoreV1alphaArgs(
      backendMetastores: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['backendMetastores']),
      federationId: pulumi.Input.asInput<String>(map['federationId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}

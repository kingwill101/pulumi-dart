// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Workstation.
class WorkstationWorkstationsV1betaArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Human-readable name for this workstation.
  final pulumi.Input<String>? displayName;

  /// Optional. Environment variables passed to the workstation container's entrypoint.
  final pulumi.Input<Map<String, String>>? env;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Identifier. Full name of this workstation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;

  /// Required. ID to use for the workstation.
  final pulumi.Input<String> workstationId;

  WorkstationWorkstationsV1betaArgs({
    this.annotations,
    this.displayName,
    this.env,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
    required this.workstationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
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
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    map['workstationId'] = workstationId;
    return map;
  }

  factory WorkstationWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationWorkstationsV1betaArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      env: pulumi.Input.asOptionalInput<Map<String, String>>(map['env']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId:
          pulumi.Input.asInput<String>(map['workstationConfigId']),
      workstationId: pulumi.Input.asInput<String>(map['workstationId']),
    );
  }
}

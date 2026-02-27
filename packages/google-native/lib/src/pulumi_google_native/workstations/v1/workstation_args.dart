// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Workstation.
class WorkstationArgs {
  /// Optional. Client-specified annotations.
  final Input<Map<String, String>>? annotations;

  /// Optional. Human-readable name for this workstation.
  final Input<String>? displayName;

  /// Optional. Environment variables passed to the workstation container's entrypoint.
  final Input<Map<String, String>>? env;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Identifier. Full name of this workstation.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> workstationClusterId;
  final Input<String> workstationConfigId;

  /// Required. ID to use for the workstation.
  final Input<String> workstationId;

  WorkstationArgs({
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

  factory WorkstationArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      env: Input.asOptionalInput<Map<String, String>>(map['env']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId: Input.asInput<String>(map['workstationConfigId']),
      workstationId: Input.asInput<String>(map['workstationId']),
    );
  }
}

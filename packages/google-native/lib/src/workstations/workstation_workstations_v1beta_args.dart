// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_workstation_workstations_v1beta_args_doc}
/// The set of arguments for Workstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_workstation_workstations_v1beta_args_doc}
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

  /// Creates a new [WorkstationWorkstationsV1betaArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [displayName] Optional. Human-readable name for this workstation.
  /// [env] Optional. Environment variables passed to the workstation container's entrypoint.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required. ID to use for the workstation.
  WorkstationWorkstationsV1betaArgs({
    Map<String, String>? annotations,
    String? displayName,
    Map<String, String>? env,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    required String workstationClusterId,
    required String workstationConfigId,
    required String workstationId,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        env = pulumi.Input.asOptionalInput<Map<String, String>>(env),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        workstationClusterId =
            pulumi.Input.asInput<String>(workstationClusterId),
        workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
        workstationId = pulumi.Input.asInput<String>(workstationId);

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
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      env: map['env'] == null
          ? null
          : (map['env'] as Map).cast<String, String>(),
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
      workstationId: map['workstationId'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_workstation_workstation_args_doc}
/// The set of arguments for Workstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_workstation_args_doc}
class WorkstationArgs {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;

  /// 'Client-specified environment variables passed to the workstation container's entrypoint.'
  final pulumi.Input<Map<String, String>>? env;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the workstation parent resources reside.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Full resource name of the source workstation from which the workstation's persistent
  /// directories will be cloned from during creation.
  final pulumi.Input<String>? sourceWorkstation;

  /// The ID of the parent workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  final pulumi.Input<String> workstationConfigId;

  /// ID to use for the workstation.
  final pulumi.Input<String> workstationId;

  /// Creates a new [WorkstationArgs].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [displayName] Human-readable name for this resource.
  /// [env] 'Client-specified environment variables passed to the workstation container's entrypoint.'
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation parent resources reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceWorkstation] Full resource name of the source workstation from which the workstation's persistent
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID of the parent workstation cluster config.
  /// [workstationId] ID to use for the workstation.
  WorkstationArgs({
    Map<String, String>? annotations,
    String? displayName,
    Map<String, String>? env,
    Map<String, String>? labels,
    required String location,
    String? project,
    String? sourceWorkstation,
    required String workstationClusterId,
    required String workstationConfigId,
    required String workstationId,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        env = pulumi.Input.asOptionalInput<Map<String, String>>(env),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceWorkstation =
            pulumi.Input.asOptionalInput<String>(sourceWorkstation),
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
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sourceWorkstationValue = sourceWorkstation;
    if (sourceWorkstationValue != null) {
      map['sourceWorkstation'] = sourceWorkstationValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    map['workstationId'] = workstationId;
    return map;
  }

  factory WorkstationArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      env: map['env'] == null
          ? null
          : (map['env'] as Map).cast<String, String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceWorkstation: map['sourceWorkstation'] == null
          ? null
          : map['sourceWorkstation'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
      workstationId: map['workstationId'] as String,
    );
  }
}

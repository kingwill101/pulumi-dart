// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [fieldMask] Optional.
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceArgs({
    String? fieldMask,
    required String instanceId,
    String? project,
  })  : fieldMask = pulumi.Input.asOptionalInput<String>(fieldMask),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldMaskValue = fieldMask;
    if (fieldMaskValue != null) {
      map['fieldMask'] = fieldMaskValue;
    }
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      fieldMask: map['fieldMask'] == null ? null : map['fieldMask'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

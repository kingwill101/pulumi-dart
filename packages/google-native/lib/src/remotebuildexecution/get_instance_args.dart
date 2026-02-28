// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_remotebuildexecution_v1alpha_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_remotebuildexecution_v1alpha_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceArgs({
    required String instanceId,
    String? project,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_group_manager_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_group_manager_args_doc}
class GetInstanceGroupManagerArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceGroupManagerArgs({
    required String instanceGroupManager,
    String? project,
    required String zone,
  })  : instanceGroupManager =
            pulumi.Input.asInput<String>(instanceGroupManager),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManager'] = instanceGroupManager;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs(
      instanceGroupManager: map['instanceGroupManager'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

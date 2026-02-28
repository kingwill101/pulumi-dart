// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_group_compute_beta_args_doc}
/// Arguments for getInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_group_compute_beta_args_doc}
class GetInstanceGroupComputeBetaArgs {
  final pulumi.Input<String> instanceGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupComputeBetaArgs].
  /// [instanceGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceGroupComputeBetaArgs({
    required String instanceGroup,
    String? project,
    required String zone,
  })  : instanceGroup = pulumi.Input.asInput<String>(instanceGroup),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroup'] = instanceGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupComputeBetaArgs(
      instanceGroup: map['instanceGroup'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

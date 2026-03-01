// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_group_manager_compute_beta_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_group_manager_compute_beta_args_doc}
class GetInstanceGroupManagerComputeBetaArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerComputeBetaArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceGroupManagerComputeBetaArgs({
    required String instanceGroupManager,
    String? project,
    required String zone,
  }) : instanceGroupManager = pulumi.Input.asInput<String>(
         instanceGroupManager,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceGroupManagerComputeBetaArgs(
      instanceGroupManager: map['instanceGroupManager'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

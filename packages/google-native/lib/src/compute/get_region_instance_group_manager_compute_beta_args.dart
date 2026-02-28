// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_instance_group_manager_compute_beta_args_doc}
/// Arguments for getRegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_instance_group_manager_compute_beta_args_doc}
class GetRegionInstanceGroupManagerComputeBetaArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceGroupManagerComputeBetaArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstanceGroupManagerComputeBetaArgs({
    required String instanceGroupManager,
    String? project,
    required String region,
  }) :
      instanceGroupManager = pulumi.Input.asInput<String>(instanceGroupManager),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceGroupManagerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerComputeBetaArgs(
      instanceGroupManager: map['instanceGroupManager'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}


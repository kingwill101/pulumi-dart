// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_instance_group_manager_compute_v1_args_doc}
/// Arguments for getRegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_instance_group_manager_compute_v1_args_doc}
class GetRegionInstanceGroupManagerComputeV1Args {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceGroupManagerComputeV1Args].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstanceGroupManagerComputeV1Args({
    required String instanceGroupManager,
    String? project,
    required String region,
  }) : instanceGroupManager = pulumi.Input.asInput<String>(
         instanceGroupManager,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceGroupManagerComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceGroupManagerComputeV1Args(
      instanceGroupManager: map['instanceGroupManager'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

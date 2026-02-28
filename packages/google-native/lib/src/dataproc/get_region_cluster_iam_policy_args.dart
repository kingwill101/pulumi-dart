// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
/// Arguments for getRegionClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_cluster_iam_policy_args_doc}
class GetRegionClusterIamPolicyArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionClusterIamPolicyArgs].
  /// [clusterId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionClusterIamPolicyArgs({
    required String clusterId,
    String? project,
    required String regionId,
  })  : clusterId = pulumi.Input.asInput<String>(clusterId),
        project = pulumi.Input.asOptionalInput<String>(project),
        regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyArgs(
      clusterId: map['clusterId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

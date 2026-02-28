// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_cluster_iam_policy_get_cluster_iam_policy_args_doc}
/// Arguments for getClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_cluster_iam_policy_get_cluster_iam_policy_args_doc}
class GetClusterIamPolicyArgs {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  final pulumi.Input<String> cluster;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterIamPolicyArgs].
  /// [cluster] The name or relative resource id of the cluster to manage IAM policies for.
  /// [project] Optional.
  /// [region] Optional.
  GetClusterIamPolicyArgs({
    required String cluster,
    String? project,
    String? region,
  })  : cluster = pulumi.Input.asInput<String>(cluster),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterIamPolicyArgs(
      cluster: map['cluster'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

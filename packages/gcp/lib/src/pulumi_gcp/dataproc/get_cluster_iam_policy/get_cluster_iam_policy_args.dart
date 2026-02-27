// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClusterIamPolicy.
class GetClusterIamPolicyArgs {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  final pulumi.Input<String> cluster;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  GetClusterIamPolicyArgs({
    required this.cluster,
    this.project,
    this.region,
  });

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
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}

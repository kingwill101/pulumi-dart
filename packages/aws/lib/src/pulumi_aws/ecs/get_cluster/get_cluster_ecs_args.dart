// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterEcsArgs {
  /// Name of the ECS Cluster
  final pulumi.Input<String> clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  GetClusterEcsArgs({
    required this.clusterName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetClusterEcsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterEcsArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNodeGroup.
class GetNodeGroupArgs {
  /// Name of the cluster.
  final pulumi.Input<String> clusterName;

  /// Name of the node group.
  final pulumi.Input<String> nodeGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetNodeGroupArgs({
    required this.clusterName,
    required this.nodeGroupName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['nodeGroupName'] = nodeGroupName;
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

  factory GetNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      nodeGroupName: pulumi.Input.asInput<String>(map['nodeGroupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

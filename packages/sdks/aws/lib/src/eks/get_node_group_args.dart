// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_node_group_get_node_group_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_eks_get_node_group_get_node_group_args_doc}
class GetNodeGroupArgs {
  /// Name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Name of the node group.
  final pulumi.Input<String> nodeGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetNodeGroupArgs].
  /// [clusterName] Name of the cluster.
  /// [nodeGroupName] Name of the node group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags.
  GetNodeGroupArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> nodeGroupName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      nodeGroupName = pulumi.Input.asInput<String>(nodeGroupName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'nodeGroupName': nodeGroupName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      nodeGroupName: pulumi.Output.create<String>(map['nodeGroupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


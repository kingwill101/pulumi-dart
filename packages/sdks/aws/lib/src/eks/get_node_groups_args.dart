// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_node_groups_get_node_groups_args_doc}
/// Arguments for getNodeGroups.
/// {@endtemplate}
/// {@macro pulumi_eks_get_node_groups_get_node_groups_args_doc}
class GetNodeGroupsArgs {
  /// Name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNodeGroupsArgs].
  /// [clusterName] Name of the cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetNodeGroupsArgs({
    required this.clusterName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'region': ?region,
    };
  }

  factory GetNodeGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupsArgs(
      clusterName: (map['clusterName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


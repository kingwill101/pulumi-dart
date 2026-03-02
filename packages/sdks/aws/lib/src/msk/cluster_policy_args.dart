// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_cluster_policy_cluster_policy_args_doc}
/// The set of arguments for ClusterPolicy.
/// {@endtemplate}
/// {@macro pulumi_msk_cluster_policy_cluster_policy_args_doc}
class ClusterPolicyArgs {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  final pulumi.Input<String> clusterArn;
  /// Resource policy for cluster.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterPolicyArgs].
  /// [clusterArn] The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  /// [policy] Resource policy for cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterPolicyArgs({
    required this.clusterArn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ClusterPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyArgs(
      clusterArn: (map['clusterArn'] as String).input(),
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


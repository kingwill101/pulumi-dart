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
    required pulumi.Output<String> clusterArn,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      clusterArn = pulumi.Input.asInput<String>(clusterArn),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ClusterPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyArgs(
      clusterArn: pulumi.Output.create<String>(map['clusterArn'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


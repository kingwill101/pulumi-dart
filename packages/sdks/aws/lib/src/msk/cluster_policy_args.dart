// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_cluster_policy_cluster_policy_args_doc}
/// The set of arguments for ClusterPolicy.
/// {@endtemplate}
/// {@macro pulumi_msk_cluster_policy_cluster_policy_args_doc}
class ClusterPolicyArgs {
  /// ARN that uniquely identifies the cluster.
  final pulumi.Input<String> clusterArn;
  /// Resource policy for cluster.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ClusterPolicyArgs].
  /// [clusterArn] ARN that uniquely identifies the cluster.
  /// [policy] Resource policy for cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ClusterPolicyArgs({
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
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

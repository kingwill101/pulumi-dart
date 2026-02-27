// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterPolicy.
class ClusterPolicyArgs {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  final pulumi.Input<String> clusterArn;

  /// Resource policy for cluster.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ClusterPolicyArgs({
    required this.clusterArn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ClusterPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}

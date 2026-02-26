// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterPolicy.
class ClusterPolicyArgs {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  final Input<String> clusterArn;

  /// Resource policy for cluster.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      clusterArn: Input.asInput<String>(map['clusterArn']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

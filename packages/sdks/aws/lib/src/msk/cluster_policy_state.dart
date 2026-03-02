// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterPolicy resources.
class ClusterPolicyState {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  final pulumi.Input<String>? clusterArn;
  final pulumi.Input<String>? currentVersion;
  /// Resource policy for cluster.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterPolicyState].
  /// [clusterArn] The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  /// [currentVersion] Optional.
  /// [policy] Resource policy for cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterPolicyState({
    this.clusterArn,
    this.currentVersion,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': ?clusterArn,
      'currentVersion': ?currentVersion,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ClusterPolicyState.fromMap(Map<String, dynamic> map) {
    return ClusterPolicyState(
      clusterArn: map['clusterArn'] == null ? null : ((map['clusterArn'] as String).input()).input(),
      currentVersion: map['currentVersion'] == null ? null : ((map['currentVersion'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


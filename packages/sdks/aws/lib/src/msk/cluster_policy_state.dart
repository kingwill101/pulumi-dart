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
    pulumi.Output<String>? clusterArn,
    pulumi.Output<String>? currentVersion,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      clusterArn = pulumi.Input.asOptionalInput<String>(clusterArn),
      currentVersion = pulumi.Input.asOptionalInput<String>(currentVersion),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      clusterArn: map['clusterArn'] == null ? null : pulumi.Output.create<String>(map['clusterArn'] as String),
      currentVersion: map['currentVersion'] == null ? null : pulumi.Output.create<String>(map['currentVersion'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


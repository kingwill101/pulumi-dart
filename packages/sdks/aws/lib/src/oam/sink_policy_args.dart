// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oam_sink_policy_sink_policy_args_doc}
/// The set of arguments for SinkPolicy.
/// {@endtemplate}
/// {@macro pulumi_oam_sink_policy_sink_policy_args_doc}
class SinkPolicyArgs {
  /// JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the sink to attach this policy to.
  final pulumi.Input<String> sinkIdentifier;

  /// Creates a new [SinkPolicyArgs].
  /// [policy] JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sinkIdentifier] ARN of the sink to attach this policy to.
  SinkPolicyArgs({
    required this.policy,
    this.region,
    required this.sinkIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'sinkIdentifier': sinkIdentifier,
    };
  }

  factory SinkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SinkPolicyArgs(
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sinkIdentifier: (map['sinkIdentifier'] as String).input(),
    );
  }
}


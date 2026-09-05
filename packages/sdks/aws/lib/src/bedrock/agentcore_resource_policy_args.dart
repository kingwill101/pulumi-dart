// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_agentcore_resource_policy_agentcore_resource_policy_args_doc}
/// The set of arguments for AgentcoreResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_resource_policy_agentcore_resource_policy_args_doc}
class AgentcoreResourcePolicyArgs {
  /// Resource policy definition
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource for which to create or update the resource policy.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Creates a new [AgentcoreResourcePolicyArgs].
  /// [policy] Resource policy definition
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource for which to create or update the resource policy.
  const AgentcoreResourcePolicyArgs({
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory AgentcoreResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreResourcePolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

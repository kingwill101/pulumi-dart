// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_guardrail_resource_policy_guardrail_resource_policy_args_doc}
/// The set of arguments for GuardrailResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_bedrock_guardrail_resource_policy_guardrail_resource_policy_args_doc}
class GuardrailResourcePolicyArgs {
  /// JSON policy document. This is a resource-based policy granting other principals (e.g., all principals in an AWS Organization) permission to call Bedrock APIs on this resource.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Bedrock resource to attach the policy to. This can be a guardrail ARN or a system-defined guardrail profile ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GuardrailResourcePolicyArgs].
  /// [policy] JSON policy document. This is a resource-based policy granting other principals (e.g., all principals in an AWS Organization) permission to call Bedrock APIs on this resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the Bedrock resource to attach the policy to. This can be a guardrail ARN or a system-defined guardrail profile ARN.
  const GuardrailResourcePolicyArgs({
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

  factory GuardrailResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailResourcePolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GuardrailResourcePolicy resources.
class GuardrailResourcePolicyState {
  /// JSON policy document. This is a resource-based policy granting other principals (e.g., all principals in an AWS Organization) permission to call Bedrock APIs on this resource.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Bedrock resource to attach the policy to. This can be a guardrail ARN or a system-defined guardrail profile ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [GuardrailResourcePolicyState].
  /// [policy] JSON policy document. This is a resource-based policy granting other principals (e.g., all principals in an AWS Organization) permission to call Bedrock APIs on this resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the Bedrock resource to attach the policy to. This can be a guardrail ARN or a system-defined guardrail profile ARN.
  const GuardrailResourcePolicyState({
    this.policy,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory GuardrailResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return GuardrailResourcePolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

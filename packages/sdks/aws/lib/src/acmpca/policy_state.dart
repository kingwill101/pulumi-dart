// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// JSON-formatted IAM policy to attach to the specified private CA resource.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the private CA to associate with the policy.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [PolicyState].
  /// [policy] JSON-formatted IAM policy to attach to the specified private CA resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the private CA to associate with the policy.
  PolicyState({
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}


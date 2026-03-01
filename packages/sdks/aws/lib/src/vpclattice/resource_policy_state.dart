// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [ResourcePolicyState].
  /// [policy] An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  ResourcePolicyState({
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

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_resource_policy_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_resource_policy_resource_policy_args_doc}
class ResourcePolicyArgs {
  /// An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ResourcePolicyArgs].
  /// [policy] An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  ResourcePolicyArgs({
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceArn,
  }) :
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}


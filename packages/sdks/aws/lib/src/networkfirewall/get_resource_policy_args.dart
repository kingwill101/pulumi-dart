// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfirewall_get_resource_policy_get_resource_policy_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_get_resource_policy_get_resource_policy_args_doc}
class GetResourcePolicyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) that identifies the resource policy.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetResourcePolicyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) that identifies the resource policy.
  GetResourcePolicyArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory GetResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}


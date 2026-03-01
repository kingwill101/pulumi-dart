// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_resource_policy_get_resource_policy_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_resource_policy_get_resource_policy_args_doc}
class GetResourcePolicyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource ARN of the resource for which a policy is retrieved.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetResourcePolicyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Resource ARN of the resource for which a policy is retrieved.
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


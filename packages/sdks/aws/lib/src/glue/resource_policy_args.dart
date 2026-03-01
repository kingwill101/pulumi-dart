// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_resource_policy_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_glue_resource_policy_resource_policy_args_doc}
class ResourcePolicyArgs {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  final pulumi.Input<String>? enableHybrid;
  /// The policy to be applied to the aws glue data catalog.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ResourcePolicyArgs].
  /// [enableHybrid] Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  /// [policy] The policy to be applied to the aws glue data catalog.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ResourcePolicyArgs({
    pulumi.Output<String>? enableHybrid,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      enableHybrid = pulumi.Input.asOptionalInput<String>(enableHybrid),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHybrid': ?enableHybrid,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      enableHybrid: map['enableHybrid'] == null ? null : pulumi.Output.create<String>(map['enableHybrid'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


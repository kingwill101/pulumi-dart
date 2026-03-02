// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_permission_set_inline_policy_permission_set_inline_policy_args_doc}
/// The set of arguments for PermissionSetInlinePolicy.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_permission_set_inline_policy_permission_set_inline_policy_args_doc}
class PermissionSetInlinePolicyArgs {
  /// The IAM inline policy to attach to a Permission Set.
  final pulumi.Input<String> inlinePolicy;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PermissionSetInlinePolicyArgs].
  /// [inlinePolicy] The IAM inline policy to attach to a Permission Set.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PermissionSetInlinePolicyArgs({
    required this.inlinePolicy,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePolicy': inlinePolicy,
      'instanceArn': instanceArn,
      'permissionSetArn': permissionSetArn,
      'region': ?region,
    };
  }

  factory PermissionSetInlinePolicyArgs.fromMap(Map<String, dynamic> map) {
    return PermissionSetInlinePolicyArgs(
      inlinePolicy: (map['inlinePolicy'] as String).input(),
      instanceArn: (map['instanceArn'] as String).input(),
      permissionSetArn: (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


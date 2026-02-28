// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_managed_policy_attachment_managed_policy_attachment_args_doc}
/// The set of arguments for ManagedPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_managed_policy_attachment_managed_policy_attachment_args_doc}
class ManagedPolicyAttachmentArgs {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;

  /// The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  final pulumi.Input<String> managedPolicyArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ManagedPolicyAttachmentArgs].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [managedPolicyArn] The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ManagedPolicyAttachmentArgs({
    required String instanceArn,
    required String managedPolicyArn,
    required String permissionSetArn,
    String? region,
  })  : instanceArn = pulumi.Input.asInput<String>(instanceArn),
        managedPolicyArn = pulumi.Input.asInput<String>(managedPolicyArn),
        permissionSetArn = pulumi.Input.asInput<String>(permissionSetArn),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['managedPolicyArn'] = managedPolicyArn;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ManagedPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentArgs(
      instanceArn: map['instanceArn'] as String,
      managedPolicyArn: map['managedPolicyArn'] as String,
      permissionSetArn: map['permissionSetArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

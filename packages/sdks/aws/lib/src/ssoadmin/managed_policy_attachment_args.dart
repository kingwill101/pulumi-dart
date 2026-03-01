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
    required pulumi.Output<String> instanceArn,
    required pulumi.Output<String> managedPolicyArn,
    required pulumi.Output<String> permissionSetArn,
    pulumi.Output<String>? region,
  }) :
      instanceArn = pulumi.Input.asInput<String>(instanceArn),
      managedPolicyArn = pulumi.Input.asInput<String>(managedPolicyArn),
      permissionSetArn = pulumi.Input.asInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': instanceArn,
      'managedPolicyArn': managedPolicyArn,
      'permissionSetArn': permissionSetArn,
      'region': ?region,
    };
  }

  factory ManagedPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentArgs(
      instanceArn: pulumi.Output.create<String>(map['instanceArn'] as String),
      managedPolicyArn: pulumi.Output.create<String>(map['managedPolicyArn'] as String),
      permissionSetArn: pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


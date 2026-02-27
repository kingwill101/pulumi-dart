import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_policy_attachment_args.dart';

/// Provides an IAM managed policy for a Single Sign-On (SSO) Permission Set resource
///
/// > **NOTE:** Creating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// !> **WARNING:** Do not use this resource together with the `aws.ssoadmin.ManagedPolicyAttachmentsExclusive` resource for the same permission set. Doing so will cause a conflict and will lead to managed policies being removed.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Account Assignment
///
/// > Because destruction of a managed policy attachment resource also re-provisions the associated permission set to all accounts, explicitly indicating the dependency with the account assignment resource via the `depends_on` meta argument is necessary to ensure proper deletion order when these resources are used together.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Managed Policy Attachments using the `managed_policy_arn`, `permission_set_arn`, and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment example arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup,arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class ManagedPolicyAttachment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;

  /// The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  late final pulumi.Output<String> managedPolicyArn;

  /// The name of the IAM Managed Policy.
  late final pulumi.Output<String> managedPolicyName;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ManagedPolicyAttachment(
    String name, {
    ManagedPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachment:ManagedPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceArn = registerOutput<String>('instanceArn');
    this.managedPolicyArn = registerOutput<String>('managedPolicyArn');
    this.managedPolicyName = registerOutput<String>('managedPolicyName');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
  }
}

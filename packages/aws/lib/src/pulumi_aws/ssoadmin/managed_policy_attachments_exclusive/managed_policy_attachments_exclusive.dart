import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_policy_attachments_exclusive_timeouts/managed_policy_attachments_exclusive_timeouts.dart';
import 'managed_policy_attachments_exclusive_args.dart';

/// Resource for managing exclusive AWS SSO Admin Managed Policy Attachments.
///
/// This resource is designed to manage all managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any managed policies attached to the permission set that are not defined in the configuration.
///
/// !> **WARNING:** Do not use this resource together with the `aws.ssoadmin.ManagedPolicyAttachment` resource for the same permission set. Doing so will cause a conflict and will lead to managed policies being removed.
///
/// > Destruction of this resource means Terraform will no longer manage the managed policy attachments, **but will not detach any policies**. The permission set will retain all managed policies that were attached at the time of destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Managed Policy Attachments
///
/// To disallow all managed policy attachments, set `managed_policy_arns` to an empty list.
///
/// > Any managed policies attached to the permission set will be **removed**.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `instance_arn` (String) ARN of the SSO Instance.
/// * `permission_set_arn` (String) ARN of the Permission Set.
///
/// #### Optional
///
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Managed Policy Attachments Exclusive using the `instance_arn` and `permission_set_arn` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class ManagedPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// ARN of the SSO Instance.
  late final pulumi.Output<String> instanceArn;

  /// Set of ARNs of IAM managed policies to attach to the Permission Set.
  late final pulumi.Output<List<String>> managedPolicyArns;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<ManagedPolicyAttachmentsExclusiveTimeouts?> timeouts;

  ManagedPolicyAttachmentsExclusive(
    String name, {
    ManagedPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/managedPolicyAttachmentsExclusive:ManagedPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceArn = registerOutput<String>('instanceArn');
    this.managedPolicyArns = registerOutput<List<String>>('managedPolicyArns');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<ManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts');
  }
}

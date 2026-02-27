import 'package:pulumi/pulumi.dart';
import 'group_policy_attachments_exclusive_args.dart';

/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) group.
///
/// !> This resource takes exclusive ownership over managed IAM policies attached to a group. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.GroupPolicyAttachment` resources managed alongside this resource are included in the `policy_arns` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Managed IAM Policies
///
/// To automatically remove any configured managed IAM policies, set the `policy_arns` argument to an empty list.
///
/// > This will not **prevent** managed IAM policies from being assigned to a group via Terraform (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the `group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive example MyGroup
/// ```
class GroupPolicyAttachmentsExclusive extends CustomResource {
  /// IAM group name.
  late final Output<String> groupName;

  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  late final Output<List<String>> policyArns;

  GroupPolicyAttachmentsExclusive(
    String name, {
    GroupPolicyAttachmentsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyArns = registerOutput<List<String>>('policyArns');
  }
}

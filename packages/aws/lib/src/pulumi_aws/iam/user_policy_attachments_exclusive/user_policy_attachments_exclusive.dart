import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policy_attachments_exclusive_args.dart';

/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) user.
///
/// !> This resource takes exclusive ownership over managed IAM policies attached to a user. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.UserPolicyAttachment` resources managed alongside this resource are included in the `policy_arns` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the user.
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
/// > This will not **prevent** managed IAM policies from being assigned to a user via Terraform (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicyAttachmentsExclusive:UserPolicyAttachmentsExclusive example MyUser
/// ```
class UserPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyArns;

  /// IAM user name.
  late final pulumi.Output<String> userName;

  UserPolicyAttachmentsExclusive(
    String name, {
    UserPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachmentsExclusive:UserPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyArns = registerOutput<List<String>>('policyArns');
    this.userName = registerOutput<String>('userName');
  }
}

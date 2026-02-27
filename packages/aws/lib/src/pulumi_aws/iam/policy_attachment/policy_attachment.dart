import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to user(s), role(s), and/or group(s)
///
/// !> **WARNING:** The aws.iam.PolicyAttachment resource creates **exclusive** attachments of IAM policies. Across the entire AWS account, all of the users/roles/groups to which a single policy is attached must be declared by a single aws.iam.PolicyAttachment resource. This means that even any users/roles/groups that have the attached policy via any other mechanism (including other resources managed by this provider) will have that attached policy revoked by this resource. Consider `aws.iam.RolePolicyAttachment`, `aws.iam.UserPolicyAttachment`, or `aws.iam.GroupPolicyAttachment` instead. These resources do not enforce exclusive attachment of an IAM policy.
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.GroupPolicyAttachment`, `aws.iam.RolePolicyAttachment`, and `aws.iam.UserPolicyAttachment` resources and will permanently show a difference if both are defined.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `managed_policy_arns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and the provider will show a permanent difference.
///
/// > **NOTE:** To ensure Pulumi correctly manages dependencies during updates, use a reference to the IAM resource when defining the `policy_arn` for `aws.iam.PolicyAttachment`, rather than constructing the ARN directly. For example, use `policy_arn = aws_iam_policy.example.arn` instead of `policy_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/Example"`. Failing to do so may lead to errors like `DeleteConflict: Cannot delete a policy attached to entities` or `NoSuchEntity`.
class PolicyAttachment extends pulumi.CustomResource {
  /// Group(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> groups;

  /// Name of the attachment. This cannot be an empty string.
  late final pulumi.Output<String> name;

  /// ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  late final pulumi.Output<String> policyArn;

  /// Role(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> roles;

  /// User(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> users;

  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groups = registerOutput<List<String>?>('groups');
    this.name = registerOutput<String>('name');
    this.policyArn = registerOutput<String>('policyArn');
    this.roles = registerOutput<List<String>?>('roles');
    this.users = registerOutput<List<String>?>('users');
  }
}

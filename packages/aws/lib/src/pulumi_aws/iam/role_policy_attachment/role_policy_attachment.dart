import 'package:pulumi/pulumi.dart';
import 'role_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM role
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `managed_policy_arns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and Pulumi will show a permanent difference.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `role` (String) Name of the IAM role.
/// * `policy_arn` (String) ARN of the IAM policy.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM role policy attachments using the role name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePolicyAttachment:RolePolicyAttachment example test-role/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class RolePolicyAttachment extends CustomResource {
  /// The ARN of the policy you want to apply
  late final Output<String> policyArn;

  /// The name of the IAM role to which the policy should be applied
  late final Output<String> role;

  RolePolicyAttachment(
    String name, {
    RolePolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePolicyAttachment:RolePolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyArn = registerOutput<String>('policyArn');
    this.role = registerOutput<String>('role');
  }
}

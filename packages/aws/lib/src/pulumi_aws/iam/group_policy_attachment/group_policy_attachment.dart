import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM group
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM group policy attachments using the group name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicyAttachment:GroupPolicyAttachment test-attach test-group/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class GroupPolicyAttachment extends pulumi.CustomResource {
  /// The group the policy should be applied to
  late final pulumi.Output<String> group;

  /// The ARN of the policy you want to apply
  late final pulumi.Output<String> policyArn;

  GroupPolicyAttachment(
    String name, {
    GroupPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicyAttachment:GroupPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.policyArn = registerOutput<String>('policyArn');
  }
}

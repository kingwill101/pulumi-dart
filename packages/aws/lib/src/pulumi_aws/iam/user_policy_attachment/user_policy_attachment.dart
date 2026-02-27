import 'package:pulumi/pulumi.dart';
import 'user_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM user
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM user policy attachments using the user name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicyAttachment:UserPolicyAttachment test-attach test-user/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class UserPolicyAttachment extends CustomResource {
  /// The ARN of the policy you want to apply
  late final Output<String> policyArn;

  /// The user the policy should be applied to
  late final Output<String> user;

  UserPolicyAttachment(
    String name, {
    UserPolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachment:UserPolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyArn = registerOutput<String>('policyArn');
    this.user = registerOutput<String>('user');
  }
}

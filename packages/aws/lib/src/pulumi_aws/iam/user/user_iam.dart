import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_iam_args.dart';

/// Provides an IAM user.
///
/// > *NOTE:* If policies are attached to the user via the `aws.iam.PolicyAttachment` resource and you are modifying the user `name` or `path`, the `force_destroy` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The `aws.iam.UserPolicyAttachment` resource (recommended) does not have this requirement.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Users using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/user:User lb loadbalancer
/// ```
class UserIam extends pulumi.CustomResource {
  /// The ARN assigned by AWS for this user.
  late final pulumi.Output<String> arn;

  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without `force_destroy`
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed.
  late final pulumi.Output<bool?> forceDestroy;

  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  late final pulumi.Output<String> name;

  /// Path in which to create the user.
  late final pulumi.Output<String?> path;

  /// The ARN of the policy that is used to set the permissions boundary for the user.
  late final pulumi.Output<String?> permissionsBoundary;

  /// Key-value mapping of tags for the IAM user. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The [unique ID][1] assigned by AWS.
  late final pulumi.Output<String> uniqueId;

  UserIam(
    String name, {
    UserIamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String?>('path');
    this.permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}

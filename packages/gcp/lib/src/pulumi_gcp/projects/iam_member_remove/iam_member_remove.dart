import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_member_remove_args.dart';

/// Ensures that a member:role pairing does not exist in a project's IAM policy.
///
/// On create, this resource will modify the policy to remove the `member` from the
/// `role`. If the membership is ever re-added, the next refresh will clear this
/// resource from state, proposing re-adding it to correct the membership. Import is
/// not supported- this resource will acquire the current policy and modify it as
/// part of creating the resource.
///
/// This resource will conflict with `gcp.projects.IAMPolicy` and
/// `gcp.projects.IAMBinding` resources that share a role, as well as
/// `gcp.projects.IAMMember` resources that target the same membership. When
/// multiple resources conflict the final state is not guaranteed to include or omit
/// the membership. Subsequent `pulumi up` calls will always show a diff
/// until the configuration is corrected.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/granting-changing-revoking-access)
/// and
/// [API reference](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy).
class IamMemberRemove extends pulumi.CustomResource {
  /// The IAM principal that should not have the target role.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The project id of the target project.
  late final pulumi.Output<String> project;

  /// The target role that should be removed.
  late final pulumi.Output<String> role;

  IamMemberRemove(
    String name, {
    IamMemberRemoveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iamMemberRemove:IamMemberRemove',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}

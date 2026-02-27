import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_folder_iam_member_condition/managed_folder_iam_member_condition.dart';
import 'managed_folder_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Storage ManagedFolder. Each of these resources serves a different use case:
///
/// * `gcp.storage.ManagedFolderIamPolicy`: Authoritative. Sets the IAM policy for the managedfolder and replaces any existing policy already attached.
/// * `gcp.storage.ManagedFolderIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedfolder are preserved.
/// * `gcp.storage.ManagedFolderIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedfolder are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.storage.ManagedFolderIamPolicy`: Retrieves the IAM policy for the managedfolder
///
/// > **Note:** `gcp.storage.ManagedFolderIamPolicy` **cannot** be used in conjunction with `gcp.storage.ManagedFolderIamBinding` and `gcp.storage.ManagedFolderIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.storage.ManagedFolderIamBinding` resources **can be** used in conjunction with `gcp.storage.ManagedFolderIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.storage.ManagedFolderIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.storage.ManagedFolderIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.storage.ManagedFolderIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud Storage ManagedFolder
/// Three different resources help you manage your IAM policy for Cloud Storage ManagedFolder. Each of these resources serves a different use case:
///
/// * `gcp.storage.ManagedFolderIamPolicy`: Authoritative. Sets the IAM policy for the managedfolder and replaces any existing policy already attached.
/// * `gcp.storage.ManagedFolderIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the managedfolder are preserved.
/// * `gcp.storage.ManagedFolderIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the managedfolder are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.storage.ManagedFolderIamPolicy`: Retrieves the IAM policy for the managedfolder
///
/// > **Note:** `gcp.storage.ManagedFolderIamPolicy` **cannot** be used in conjunction with `gcp.storage.ManagedFolderIamBinding` and `gcp.storage.ManagedFolderIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.storage.ManagedFolderIamBinding` resources **can be** used in conjunction with `gcp.storage.ManagedFolderIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.storage.ManagedFolderIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.storage.ManagedFolderIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.storage.ManagedFolderIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * b/{{bucket}}/managedFolders/{{managed_folder}}
///
/// * {{bucket}}/{{managed_folder}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Storage managedfolder IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamMember:ManagedFolderIamMember editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamMember:ManagedFolderIamMember editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamMember:ManagedFolderIamMember editor b/{{bucket}}/managedFolders/{{managed_folder}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ManagedFolderIamMember extends pulumi.CustomResource {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> bucket;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<ManagedFolderIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> managedFolder;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  late final pulumi.Output<String> member;

  /// The role that should be applied. Only one
  /// `gcp.storage.ManagedFolderIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  ManagedFolderIamMember(
    String name, {
    ManagedFolderIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolderIamMember:ManagedFolderIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.condition =
        registerOutput<ManagedFolderIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.managedFolder = registerOutput<String>('managedFolder');
    this.member = registerOutput<String>('member');
    this.role = registerOutput<String>('role');
  }
}

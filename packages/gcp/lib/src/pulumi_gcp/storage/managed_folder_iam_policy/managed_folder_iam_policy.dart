import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_iam_policy_args.dart';

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
/// $ pulumi import gcp:storage/managedFolderIamPolicy:ManagedFolderIamPolicy editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamPolicy:ManagedFolderIamPolicy editor "b/{{bucket}}/managedFolders/{{managed_folder}} roles/storage.objectViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolderIamPolicy:ManagedFolderIamPolicy editor b/{{bucket}}/managedFolders/{{managed_folder}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ManagedFolderIamPolicy extends pulumi.CustomResource {
  /// The name of the bucket that contains the managed folder. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> bucket;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> managedFolder;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  ManagedFolderIamPolicy(
    String name, {
    ManagedFolderIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolderIamPolicy:ManagedFolderIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.etag = registerOutput<String>('etag');
    this.managedFolder = registerOutput<String>('managedFolder');
    this.policyData = registerOutput<String>('policyData');
  }
}

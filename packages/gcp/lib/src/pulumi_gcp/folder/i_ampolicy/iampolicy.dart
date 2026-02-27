import 'package:pulumi/pulumi.dart';
import 'iampolicy_args.dart';

/// Four different resources help you manage your IAM policy for a folder. Each of these resources serves a different use case:
///
/// * `gcp.folder.IAMPolicy`: Authoritative. Sets the IAM policy for the folder and replaces any existing policy already attached.
/// * `gcp.folder.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the folder are preserved.
/// * `gcp.folder.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the folder are preserved.
/// * `gcp.folder.IamAuditConfig`: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
///
/// > **Note:** `gcp.folder.IAMPolicy` **cannot** be used in conjunction with `gcp.folder.IAMBinding`, `gcp.folder.IAMMember`, or `gcp.folder.IamAuditConfig` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.folder.IAMBinding` resources **can be** used in conjunction with `gcp.folder.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:** The underlying API method `projects.setIamPolicy` has constraints which are documented [here](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy). In addition to these constraints,
/// IAM Conditions cannot be used with Basic Roles such as Owner. Violating these constraints will result in the API returning a 400 error code so please review these if you encounter errors with this resource.
///
/// ## gcp.folder.IAMPolicy
///
/// !> **Be careful!** You can accidentally lock yourself out of your folder
/// using this resource. Deleting a `gcp.folder.IAMPolicy` removes access
/// from anyone without permissions on its parent folder/organization. Proceed with caution.
/// It's not recommended to use `gcp.folder.IAMPolicy` with your provider folder
/// to avoid locking yourself out, and it should generally only be used with folders
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.folder.IAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.folder.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.folder.IamAuditConfig
///
///
///
/// ## gcp.folder.IAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.folder.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.folder.IamAuditConfig
///
///
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_folder_iam_audit_config` resource using the resource's `folder_id` and the `service`, e.g:
///
/// * `"folder/{{folder_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "folder/{{folder_id}} foo.googleapis.com"
///
/// to = google_folder_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:folder/iAMPolicy:IAMPolicy default "folder/{{folder_id}} foo.googleapis.com"
/// ```
class IAMPolicy extends CustomResource {
  /// (Computed) The etag of the folder's IAM policy.
  late final Output<String> etag;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the folder. The policy will be
  /// merged with any existing policy applied to the folder.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the folder, locking out users without
  /// folder-level access.
  late final Output<String> policyData;

  IAMPolicy(
    String name, {
    IAMPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iAMPolicy:IAMPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.policyData = registerOutput<String>('policyData');
  }
}

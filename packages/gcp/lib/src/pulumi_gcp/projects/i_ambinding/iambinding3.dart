import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition3.dart';
import 'iambinding_args3.dart';

/// Four different resources help you manage your IAM policy for a project. Each of these resources serves a different use case:
///
/// * `gcp.projects.IAMPolicy`: Authoritative. Sets the IAM policy for the project and replaces any existing policy already attached.
/// * `gcp.projects.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the project are preserved.
/// * `gcp.projects.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the project are preserved.
/// * `gcp.projects.IAMAuditConfig`: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
/// > **Note:** `gcp.projects.IAMPolicy` **cannot** be used in conjunction with `gcp.projects.IAMBinding`, `gcp.projects.IAMMember`, or `gcp.projects.IAMAuditConfig` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.projects.IAMBinding` resources **can be** used in conjunction with `gcp.projects.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:** The underlying API method `projects.setIamPolicy` has a lot of constraints which are documented [here](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy). In addition to these constraints,
/// IAM Conditions cannot be used with Basic Roles such as Owner. Violating these constraints will result in the API returning 400 error code so please review these if you encounter errors with this resource.
///
/// ## gcp.projects.IAMPolicy
///
/// !> **Be careful!** You can accidentally lock yourself out of your project
/// using this resource. Deleting a `gcp.projects.IAMPolicy` removes access
/// from anyone without organization-level access to the project. Proceed with caution.
/// It's not recommended to use `gcp.projects.IAMPolicy` with your provider project
/// to avoid locking yourself out, and it should generally only be used with projects
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMAuditConfig
///
///
///
/// ## gcp.projects.IAMPolicy
///
/// !> **Be careful!** You can accidentally lock yourself out of your project
/// using this resource. Deleting a `gcp.projects.IAMPolicy` removes access
/// from anyone without organization-level access to the project. Proceed with caution.
/// It's not recommended to use `gcp.projects.IAMPolicy` with your provider project
/// to avoid locking yourself out, and it should generally only be used with projects
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.projects.IAMAuditConfig
///
///
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_project_iam_audit_config` resource using the resource's `project_id` and the `service`, e.g:
///
/// * `"{{project_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "{{project_id}} foo.googleapis.com"
///
/// to = google_project_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:projects/iAMBinding:IAMBinding default "{{project_id}} foo.googleapis.com"
/// ```
class IAMBinding3 extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<IAMBindingCondition3?> condition;

  /// (Computed) The etag of the project's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<List<String>> members;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  IAMBinding3(
    String name, {
    IAMBindingArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iAMBinding:IAMBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<IAMBindingCondition3?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}

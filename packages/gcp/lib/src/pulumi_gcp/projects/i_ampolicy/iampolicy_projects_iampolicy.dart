import 'package:pulumi/pulumi.dart' as pulumi;
import 'iampolicy_projects_iampolicy_args.dart';

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
/// $ pulumi import gcp:projects/iAMPolicy:IAMPolicy default "{{project_id}} foo.googleapis.com"
/// ```
class IAMPolicyProjectsIAmpolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the project's IAM policy.
  late final pulumi.Output<String> etag;

  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the project. The policy will be
  /// merged with any existing policy applied to the project.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the project, locking out users without
  /// organization-level access.
  late final pulumi.Output<String> policyData;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  late final pulumi.Output<String> project;

  IAMPolicyProjectsIAmpolicy(
    String name, {
    IAMPolicyProjectsIAmpolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iAMPolicy:IAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

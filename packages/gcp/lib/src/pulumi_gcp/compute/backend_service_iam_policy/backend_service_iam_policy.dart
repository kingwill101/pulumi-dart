import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine BackendService. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendServiceIamPolicy`: Authoritative. Sets the IAM policy for the backendservice and replaces any existing policy already attached.
/// * `gcp.compute.BackendServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendservice are preserved.
/// * `gcp.compute.BackendServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendServiceIamPolicy`: Retrieves the IAM policy for the backendservice
///
/// > **Note:** `gcp.compute.BackendServiceIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendServiceIamBinding` and `gcp.compute.BackendServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendServiceIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.BackendServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.BackendServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.BackendServiceIamMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Compute Engine BackendService
///
/// Three different resources help you manage your IAM policy for Compute Engine BackendService. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendServiceIamPolicy`: Authoritative. Sets the IAM policy for the backendservice and replaces any existing policy already attached.
/// * `gcp.compute.BackendServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendservice are preserved.
/// * `gcp.compute.BackendServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendServiceIamPolicy`: Retrieves the IAM policy for the backendservice
///
/// > **Note:** `gcp.compute.BackendServiceIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendServiceIamBinding` and `gcp.compute.BackendServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendServiceIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.BackendServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.BackendServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.BackendServiceIamMember
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
/// * projects/{{project}}/global/backendServices/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine backendservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor "projects/{{project}}/global/backendServices/{{backend_service}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor "projects/{{project}}/global/backendServices/{{backend_service}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy editor projects/{{project}}/global/backendServices/{{backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackendServiceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  BackendServiceIamPolicy(
    String name, {
    BackendServiceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendServiceIamPolicy:BackendServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

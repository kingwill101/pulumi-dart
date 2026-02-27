import 'package:pulumi/pulumi.dart';
import 'workload_identity_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Cloud IAM WorkloadIdentityPool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkloadIdentityPoolIamPolicy`: Authoritative. Sets the IAM policy for the workloadidentitypool and replaces any existing policy already attached.
/// * `gcp.iam.WorkloadIdentityPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workloadidentitypool are preserved.
/// * `gcp.iam.WorkloadIdentityPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workloadidentitypool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkloadIdentityPoolIamPolicy`: Retrieves the IAM policy for the workloadidentitypool
///
/// > **Note:** `gcp.iam.WorkloadIdentityPoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkloadIdentityPoolIamBinding` and `gcp.iam.WorkloadIdentityPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkloadIdentityPoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkloadIdentityPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.iam.WorkloadIdentityPoolIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iam.WorkloadIdentityPoolIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iam.WorkloadIdentityPoolIamMember
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
/// # IAM policy for Cloud IAM WorkloadIdentityPool
///
/// Three different resources help you manage your IAM policy for Cloud IAM WorkloadIdentityPool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkloadIdentityPoolIamPolicy`: Authoritative. Sets the IAM policy for the workloadidentitypool and replaces any existing policy already attached.
/// * `gcp.iam.WorkloadIdentityPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workloadidentitypool are preserved.
/// * `gcp.iam.WorkloadIdentityPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workloadidentitypool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkloadIdentityPoolIamPolicy`: Retrieves the IAM policy for the workloadidentitypool
///
/// > **Note:** `gcp.iam.WorkloadIdentityPoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkloadIdentityPoolIamBinding` and `gcp.iam.WorkloadIdentityPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkloadIdentityPoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkloadIdentityPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.iam.WorkloadIdentityPoolIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iam.WorkloadIdentityPoolIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iam.WorkloadIdentityPoolIamMember
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
/// * projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
///
/// * {{project}}/{{workload_identity_pool_id}}
///
/// * {{workload_identity_pool_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud IAM workloadidentitypool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor "projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}} roles/iam.workloadIdentityPoolViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor "projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}} roles/iam.workloadIdentityPoolViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy editor projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkloadIdentityPoolIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> workloadIdentityPoolId;

  WorkloadIdentityPoolIamPolicy(
    String name, {
    WorkloadIdentityPoolIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolIamPolicy:WorkloadIdentityPoolIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
  }
}

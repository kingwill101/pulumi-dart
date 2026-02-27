import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_backend_service_iam_member_condition/region_backend_service_iam_member_condition.dart';
import 'region_backend_service_iam_member_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine RegionBackendService. Each of these resources serves a different use case:
///
/// * `gcp.compute.RegionBackendServiceIamPolicy`: Authoritative. Sets the IAM policy for the regionbackendservice and replaces any existing policy already attached.
/// * `gcp.compute.RegionBackendServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionbackendservice are preserved.
/// * `gcp.compute.RegionBackendServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.RegionBackendServiceIamPolicy`: Retrieves the IAM policy for the regionbackendservice
///
/// > **Note:** `gcp.compute.RegionBackendServiceIamPolicy` **cannot** be used in conjunction with `gcp.compute.RegionBackendServiceIamBinding` and `gcp.compute.RegionBackendServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.RegionBackendServiceIamBinding` resources **can be** used in conjunction with `gcp.compute.RegionBackendServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.RegionBackendServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.RegionBackendServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.RegionBackendServiceIamMember
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
/// # IAM policy for Compute Engine RegionBackendService
///
/// Three different resources help you manage your IAM policy for Compute Engine RegionBackendService. Each of these resources serves a different use case:
///
/// * `gcp.compute.RegionBackendServiceIamPolicy`: Authoritative. Sets the IAM policy for the regionbackendservice and replaces any existing policy already attached.
/// * `gcp.compute.RegionBackendServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the regionbackendservice are preserved.
/// * `gcp.compute.RegionBackendServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the regionbackendservice are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.RegionBackendServiceIamPolicy`: Retrieves the IAM policy for the regionbackendservice
///
/// > **Note:** `gcp.compute.RegionBackendServiceIamPolicy` **cannot** be used in conjunction with `gcp.compute.RegionBackendServiceIamBinding` and `gcp.compute.RegionBackendServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.RegionBackendServiceIamBinding` resources **can be** used in conjunction with `gcp.compute.RegionBackendServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
/// ## gcp.compute.RegionBackendServiceIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.RegionBackendServiceIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.compute.RegionBackendServiceIamMember
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
/// * projects/{{project}}/regions/{{region}}/backendServices/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine regionbackendservice IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamMember:RegionBackendServiceIamMember editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamMember:RegionBackendServiceIamMember editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamMember:RegionBackendServiceIamMember editor projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionBackendServiceIamMember extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<RegionBackendServiceIamMemberCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

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
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  /// The role that should be applied. Only one
  /// `gcp.compute.RegionBackendServiceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  RegionBackendServiceIamMember(
    String name, {
    RegionBackendServiceIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendServiceIamMember:RegionBackendServiceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RegionBackendServiceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_iam_policy_args.dart';

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
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor "projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}} roles/compute.admin"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy editor projects/{{project}}/regions/{{region}}/backendServices/{{region_backend_service}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RegionBackendServiceIamPolicy extends pulumi.CustomResource {
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

  /// The Region in which the created backend service should reside.
  /// If it is not provided, the provider region is used.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  RegionBackendServiceIamPolicy(
    String name, {
    RegionBackendServiceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendServiceIamPolicy:RegionBackendServiceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}

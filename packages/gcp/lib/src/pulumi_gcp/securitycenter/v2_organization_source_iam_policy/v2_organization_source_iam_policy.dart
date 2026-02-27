import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_source_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * `gcp.securitycenter.V2OrganizationSourceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved.
/// * `gcp.securitycenter.V2OrganizationSourceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Retrieves the IAM policy for the organizationsource
///
/// > **Note:** `gcp.securitycenter.V2OrganizationSourceIamPolicy` **cannot** be used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamBinding` and `gcp.securitycenter.V2OrganizationSourceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.securitycenter.V2OrganizationSourceIamBinding` resources **can be** used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamPolicy
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamBinding
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamMember
///
///
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Security Command Center (SCC) v2 API OrganizationSource
///
/// Three different resources help you manage your IAM policy for Security Command Center (SCC) v2 API OrganizationSource. Each of these resources serves a different use case:
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Authoritative. Sets the IAM policy for the organizationsource and replaces any existing policy already attached.
/// * `gcp.securitycenter.V2OrganizationSourceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organizationsource are preserved.
/// * `gcp.securitycenter.V2OrganizationSourceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organizationsource are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.securitycenter.V2OrganizationSourceIamPolicy`: Retrieves the IAM policy for the organizationsource
///
/// > **Note:** `gcp.securitycenter.V2OrganizationSourceIamPolicy` **cannot** be used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamBinding` and `gcp.securitycenter.V2OrganizationSourceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.securitycenter.V2OrganizationSourceIamBinding` resources **can be** used in conjunction with `gcp.securitycenter.V2OrganizationSourceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamPolicy
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamBinding
///
///
///
/// ## gcp.securitycenter.V2OrganizationSourceIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * organizations/{{organization}}/sources/{{source}}
///
/// * {{organization}}/{{source}}
///
/// * {{source}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Security Command Center (SCC) v2 API organizationsource IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy editor "organizations/{{organization}}/sources/{{source}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy editor "organizations/{{organization}}/sources/{{source}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy editor organizations/{{organization}}/sources/{{source}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class V2OrganizationSourceIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> organization;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> source;

  V2OrganizationSourceIamPolicy(
    String name, {
    V2OrganizationSourceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationSourceIamPolicy:V2OrganizationSourceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.organization = registerOutput<String>('organization');
    this.policyData = registerOutput<String>('policyData');
    this.source = registerOutput<String>('source');
  }
}

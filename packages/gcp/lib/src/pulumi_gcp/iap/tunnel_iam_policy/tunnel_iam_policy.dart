import 'package:pulumi/pulumi.dart';
import 'tunnel_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Tunnel. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelIamPolicy`: Authoritative. Sets the IAM policy for the tunnel and replaces any existing policy already attached.
/// * `gcp.iap.TunnelIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunnel are preserved.
/// * `gcp.iap.TunnelIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunnel are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelIamPolicy`: Retrieves the IAM policy for the tunnel
///
/// > **Note:** `gcp.iap.TunnelIamPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelIamBinding` and `gcp.iap.TunnelIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.TunnelIamBinding` resources **can be** used in conjunction with `gcp.iap.TunnelIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelIamMember
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
/// # IAM policy for Identity-Aware Proxy Tunnel
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy Tunnel. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelIamPolicy`: Authoritative. Sets the IAM policy for the tunnel and replaces any existing policy already attached.
/// * `gcp.iap.TunnelIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunnel are preserved.
/// * `gcp.iap.TunnelIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunnel are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelIamPolicy`: Retrieves the IAM policy for the tunnel
///
/// > **Note:** `gcp.iap.TunnelIamPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelIamBinding` and `gcp.iap.TunnelIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.TunnelIamBinding` resources **can be** used in conjunction with `gcp.iap.TunnelIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelIamMember
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
/// * projects/{{project}}/iap_tunnel
///
/// * {{project}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy tunnel IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor "projects/{{project}}/iap_tunnel roles/iap.tunnelResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor "projects/{{project}}/iap_tunnel roles/iap.tunnelResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelIamPolicy:TunnelIamPolicy editor projects/{{project}}/iap_tunnel
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TunnelIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  TunnelIamPolicy(
    String name, {
    TunnelIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelIamPolicy:TunnelIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

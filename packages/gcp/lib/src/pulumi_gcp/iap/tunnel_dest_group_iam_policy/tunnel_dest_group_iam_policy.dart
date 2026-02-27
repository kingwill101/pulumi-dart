import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_dest_group_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Identity-Aware Proxy TunnelDestGroup. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelDestGroupIamPolicy`: Authoritative. Sets the IAM policy for the tunneldestgroup and replaces any existing policy already attached.
/// * `gcp.iap.TunnelDestGroupIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunneldestgroup are preserved.
/// * `gcp.iap.TunnelDestGroupIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunneldestgroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelDestGroupIamPolicy`: Retrieves the IAM policy for the tunneldestgroup
///
/// > **Note:** `gcp.iap.TunnelDestGroupIamPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelDestGroupIamBinding` and `gcp.iap.TunnelDestGroupIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.TunnelDestGroupIamBinding` resources **can be** used in conjunction with `gcp.iap.TunnelDestGroupIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelDestGroupIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelDestGroupIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelDestGroupIamMember
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
/// # IAM policy for Identity-Aware Proxy TunnelDestGroup
///
/// Three different resources help you manage your IAM policy for Identity-Aware Proxy TunnelDestGroup. Each of these resources serves a different use case:
///
/// * `gcp.iap.TunnelDestGroupIamPolicy`: Authoritative. Sets the IAM policy for the tunneldestgroup and replaces any existing policy already attached.
/// * `gcp.iap.TunnelDestGroupIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the tunneldestgroup are preserved.
/// * `gcp.iap.TunnelDestGroupIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the tunneldestgroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iap.TunnelDestGroupIamPolicy`: Retrieves the IAM policy for the tunneldestgroup
///
/// > **Note:** `gcp.iap.TunnelDestGroupIamPolicy` **cannot** be used in conjunction with `gcp.iap.TunnelDestGroupIamBinding` and `gcp.iap.TunnelDestGroupIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iap.TunnelDestGroupIamBinding` resources **can be** used in conjunction with `gcp.iap.TunnelDestGroupIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.iap.TunnelDestGroupIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelDestGroupIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.iap.TunnelDestGroupIamMember
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
/// * projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{dest_group}}
///
/// * {{project}}/iap_tunnel/locations/{{region}}/destGroups/{{dest_group}}
///
/// * {{project}}/{{region}}/{{dest_group}}
///
/// * {{region}}/{{dest_group}}
///
/// * {{dest_group}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Identity-Aware Proxy tunneldestgroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroupIamPolicy:TunnelDestGroupIamPolicy editor "projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{dest_group}} roles/iap.tunnelResourceAccessor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroupIamPolicy:TunnelDestGroupIamPolicy editor "projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{dest_group}} roles/iap.tunnelResourceAccessor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroupIamPolicy:TunnelDestGroupIamPolicy editor projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{dest_group}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class TunnelDestGroupIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> destGroup;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  TunnelDestGroupIamPolicy(
    String name, {
    TunnelDestGroupIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelDestGroupIamPolicy:TunnelDestGroupIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destGroup = registerOutput<String>('destGroup');
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}

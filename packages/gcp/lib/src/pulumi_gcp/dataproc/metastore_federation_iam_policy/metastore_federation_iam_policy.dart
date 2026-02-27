import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_federation_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Federation. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Authoritative. Sets the IAM policy for the federation and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreFederationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the federation are preserved.
/// * `gcp.dataproc.MetastoreFederationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the federation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Retrieves the IAM policy for the federation
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreFederationIamBinding` and `gcp.dataproc.MetastoreFederationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreFederationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamPolicy
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamBinding
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataproc Metastore Federation
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Federation. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Authoritative. Sets the IAM policy for the federation and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreFederationIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the federation are preserved.
/// * `gcp.dataproc.MetastoreFederationIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the federation are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreFederationIamPolicy`: Retrieves the IAM policy for the federation
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreFederationIamBinding` and `gcp.dataproc.MetastoreFederationIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreFederationIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreFederationIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamPolicy
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamBinding
///
///
///
/// ## gcp.dataproc.MetastoreFederationIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
///
/// * {{project}}/{{location}}/{{federation_id}}
///
/// * {{location}}/{{federation_id}}
///
/// * {{federation_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore federation IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamPolicy:MetastoreFederationIamPolicy editor "projects/{{project}}/locations/{{location}}/federations/{{federation_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamPolicy:MetastoreFederationIamPolicy editor "projects/{{project}}/locations/{{location}}/federations/{{federation_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreFederationIamPolicy:MetastoreFederationIamPolicy editor projects/{{project}}/locations/{{location}}/federations/{{federation_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreFederationIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> federationId;

  /// The location where the metastore federation should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  MetastoreFederationIamPolicy(
    String name, {
    MetastoreFederationIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreFederationIamPolicy:MetastoreFederationIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.federationId = registerOutput<String>('federationId');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

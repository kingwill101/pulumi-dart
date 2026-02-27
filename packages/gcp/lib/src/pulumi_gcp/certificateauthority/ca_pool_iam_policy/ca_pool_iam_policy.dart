import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Certificate Authority Service CaPool. Each of these resources serves a different use case:
///
/// * `gcp.certificateauthority.CaPoolIamPolicy`: Authoritative. Sets the IAM policy for the capool and replaces any existing policy already attached.
/// * `gcp.certificateauthority.CaPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the capool are preserved.
/// * `gcp.certificateauthority.CaPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the capool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.certificateauthority.CaPoolIamPolicy`: Retrieves the IAM policy for the capool
///
/// > **Note:** `gcp.certificateauthority.CaPoolIamPolicy` **cannot** be used in conjunction with `gcp.certificateauthority.CaPoolIamBinding` and `gcp.certificateauthority.CaPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.certificateauthority.CaPoolIamBinding` resources **can be** used in conjunction with `gcp.certificateauthority.CaPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.certificateauthority.CaPoolIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CaPoolIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CaPoolIamMember
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
/// # IAM policy for Certificate Authority Service CaPool
///
/// Three different resources help you manage your IAM policy for Certificate Authority Service CaPool. Each of these resources serves a different use case:
///
/// * `gcp.certificateauthority.CaPoolIamPolicy`: Authoritative. Sets the IAM policy for the capool and replaces any existing policy already attached.
/// * `gcp.certificateauthority.CaPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the capool are preserved.
/// * `gcp.certificateauthority.CaPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the capool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.certificateauthority.CaPoolIamPolicy`: Retrieves the IAM policy for the capool
///
/// > **Note:** `gcp.certificateauthority.CaPoolIamPolicy` **cannot** be used in conjunction with `gcp.certificateauthority.CaPoolIamBinding` and `gcp.certificateauthority.CaPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.certificateauthority.CaPoolIamBinding` resources **can be** used in conjunction with `gcp.certificateauthority.CaPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
/// > **Note:**  This resource supports IAM Conditions but they have some known limitations which can be found [here](https://cloud.google.com/iam/docs/conditions-overview#limitations). Please review this article if you are having issues with IAM Conditions.
///
///
/// ## gcp.certificateauthority.CaPoolIamPolicy
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CaPoolIamBinding
///
///
///
/// With IAM Conditions:
///
///
/// ## gcp.certificateauthority.CaPoolIamMember
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
/// * projects/{{project}}/locations/{{location}}/caPools/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Certificate Authority Service capool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor "projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}} roles/privateca.certificateManager user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor "projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}} roles/privateca.certificateManager"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy editor projects/{{project}}/locations/{{location}}/caPools/{{ca_pool}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class CaPoolIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> caPool;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
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

  CaPoolIamPolicy(
    String name, {
    CaPoolIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/caPoolIamPolicy:CaPoolIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.caPool = registerOutput<String>('caPool');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

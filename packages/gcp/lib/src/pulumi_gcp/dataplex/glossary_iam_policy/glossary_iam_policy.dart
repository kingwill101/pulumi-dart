import 'package:pulumi/pulumi.dart';
import 'glossary_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex Glossary. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Authoritative. Sets the IAM policy for the glossary and replaces any existing policy already attached.
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// > **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.GlossaryIamPolicy
///
///
///
/// ## gcp.dataplex.GlossaryIamBinding
///
///
///
/// ## gcp.dataplex.GlossaryIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataplex Glossary
///
/// Three different resources help you manage your IAM policy for Dataplex Glossary. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Authoritative. Sets the IAM policy for the glossary and replaces any existing policy already attached.
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// > **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.GlossaryIamPolicy
///
///
///
/// ## gcp.dataplex.GlossaryIamBinding
///
///
///
/// ## gcp.dataplex.GlossaryIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
///
/// * {{project}}/{{location}}/{{glossary_id}}
///
/// * {{location}}/{{glossary_id}}
///
/// * {{glossary_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex glossary IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GlossaryIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> glossaryId;

  /// The location where the glossary should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  GlossaryIamPolicy(
    String name, {
    GlossaryIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

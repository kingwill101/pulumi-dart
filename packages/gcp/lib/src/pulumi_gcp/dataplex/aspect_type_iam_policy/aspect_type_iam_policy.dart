import 'package:pulumi/pulumi.dart' as pulumi;
import 'aspect_type_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * `gcp.dataplex.AspectTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * `gcp.dataplex.AspectTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Retrieves the IAM policy for the aspecttype
///
/// > **Note:** `gcp.dataplex.AspectTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AspectTypeIamBinding` and `gcp.dataplex.AspectTypeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.AspectTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AspectTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.AspectTypeIamPolicy
///
///
///
/// ## gcp.dataplex.AspectTypeIamBinding
///
///
///
/// ## gcp.dataplex.AspectTypeIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataplex AspectType
///
/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * `gcp.dataplex.AspectTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * `gcp.dataplex.AspectTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Retrieves the IAM policy for the aspecttype
///
/// > **Note:** `gcp.dataplex.AspectTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AspectTypeIamBinding` and `gcp.dataplex.AspectTypeIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.AspectTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AspectTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.AspectTypeIamPolicy
///
///
///
/// ## gcp.dataplex.AspectTypeIamBinding
///
///
///
/// ## gcp.dataplex.AspectTypeIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
///
/// * {{project}}/{{location}}/{{aspect_type_id}}
///
/// * {{location}}/{{aspect_type_id}}
///
/// * {{aspect_type_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex aspecttype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AspectTypeIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> aspectTypeId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location where aspect type will be created in.
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

  AspectTypeIamPolicy(
    String name, {
    AspectTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aspectTypeId = registerOutput<String>('aspectTypeId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

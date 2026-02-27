import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataplex Zone. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.ZoneIamPolicy`: Authoritative. Sets the IAM policy for the zone and replaces any existing policy already attached.
/// * `gcp.dataplex.ZoneIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the zone are preserved.
/// * `gcp.dataplex.ZoneIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the zone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.ZoneIamPolicy`: Retrieves the IAM policy for the zone
///
/// > **Note:** `gcp.dataplex.ZoneIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.ZoneIamBinding` and `gcp.dataplex.ZoneIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.ZoneIamBinding` resources **can be** used in conjunction with `gcp.dataplex.ZoneIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.ZoneIamPolicy
///
///
///
/// ## gcp.dataplex.ZoneIamBinding
///
///
///
/// ## gcp.dataplex.ZoneIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataplex Zone
///
/// Three different resources help you manage your IAM policy for Dataplex Zone. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.ZoneIamPolicy`: Authoritative. Sets the IAM policy for the zone and replaces any existing policy already attached.
/// * `gcp.dataplex.ZoneIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the zone are preserved.
/// * `gcp.dataplex.ZoneIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the zone are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.ZoneIamPolicy`: Retrieves the IAM policy for the zone
///
/// > **Note:** `gcp.dataplex.ZoneIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.ZoneIamBinding` and `gcp.dataplex.ZoneIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.ZoneIamBinding` resources **can be** used in conjunction with `gcp.dataplex.ZoneIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.ZoneIamPolicy
///
///
///
/// ## gcp.dataplex.ZoneIamBinding
///
///
///
/// ## gcp.dataplex.ZoneIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}
///
/// * {{project}}/{{location}}/{{lake}}/{{name}}
///
/// * {{location}}/{{lake}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex zone IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamPolicy:ZoneIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamPolicy:ZoneIamPolicy editor "projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/zoneIamPolicy:ZoneIamPolicy editor projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{zone}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ZoneIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataplexZone;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> lake;

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

  ZoneIamPolicy(
    String name, {
    ZoneIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/zoneIamPolicy:ZoneIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataplexZone = registerOutput<String>('dataplexZone');
    this.etag = registerOutput<String>('etag');
    this.lake = registerOutput<String>('lake');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

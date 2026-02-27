import 'package:pulumi/pulumi.dart';
import 'metastore_table_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Table. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreTableIamPolicy`: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * `gcp.dataproc.MetastoreTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreTableIamPolicy`: Retrieves the IAM policy for the table
///
/// > **Note:** `gcp.dataproc.MetastoreTableIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreTableIamBinding` and `gcp.dataproc.MetastoreTableIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreTableIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreTableIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreTableIamPolicy
///
///
///
/// ## gcp.dataproc.MetastoreTableIamBinding
///
///
///
/// ## gcp.dataproc.MetastoreTableIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataproc Metastore Table
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Table. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreTableIamPolicy`: Authoritative. Sets the IAM policy for the table and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * `gcp.dataproc.MetastoreTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the table are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreTableIamPolicy`: Retrieves the IAM policy for the table
///
/// > **Note:** `gcp.dataproc.MetastoreTableIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreTableIamBinding` and `gcp.dataproc.MetastoreTableIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreTableIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreTableIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreTableIamPolicy
///
///
///
/// ## gcp.dataproc.MetastoreTableIamBinding
///
///
///
/// ## gcp.dataproc.MetastoreTableIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{name}}
///
/// * {{project}}/{{location}}/{{serviceId}}/{{databaseId}}/{{name}}
///
/// * {{location}}/{{serviceId}}/{{databaseId}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore table IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{databaseId}}/tables/{{table}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreTableIamPolicy extends CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> databaseId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

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

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> serviceId;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> table;

  MetastoreTableIamPolicy(
    String name, {
    MetastoreTableIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreTableIamPolicy:MetastoreTableIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.databaseId = registerOutput<String>('databaseId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.table = registerOutput<String>('table');
  }
}

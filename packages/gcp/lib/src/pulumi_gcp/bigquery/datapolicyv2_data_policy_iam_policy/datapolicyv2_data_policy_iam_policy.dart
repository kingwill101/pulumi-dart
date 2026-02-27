import 'package:pulumi/pulumi.dart' as pulumi;
import 'datapolicyv2_data_policy_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` and `gcp.bigquery.Datapolicyv2DataPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` resources **can be** used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamBinding
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Data Policy V2 DataPolicy
///
/// Three different resources help you manage your IAM policy for BigQuery Data Policy V2 DataPolicy. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Authoritative. Sets the IAM policy for the datapolicy and replaces any existing policy already attached.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datapolicy are preserved.
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datapolicy are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy`: Retrieves the IAM policy for the datapolicy
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` and `gcp.bigquery.Datapolicyv2DataPolicyIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.bigquery.Datapolicyv2DataPolicyIamBinding` resources **can be** used in conjunction with `gcp.bigquery.Datapolicyv2DataPolicyIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamPolicy
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamBinding
///
///
///
/// ## gcp.bigquery.Datapolicyv2DataPolicyIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
///
/// * {{project}}/{{location}}/{{data_policy_id}}
///
/// * {{location}}/{{data_policy_id}}
///
/// * {{data_policy_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Data Policy V2 datapolicy IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor "projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy editor projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class Datapolicyv2DataPolicyIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataPolicyId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  Datapolicyv2DataPolicyIamPolicy(
    String name, {
    Datapolicyv2DataPolicyIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicyIamPolicy:Datapolicyv2DataPolicyIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}

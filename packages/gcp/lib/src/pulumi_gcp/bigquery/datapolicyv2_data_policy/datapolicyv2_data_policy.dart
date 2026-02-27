import 'package:pulumi/pulumi.dart';
import '../datapolicyv2_data_policy_data_masking_policy/datapolicyv2_data_policy_data_masking_policy.dart';
import 'datapolicyv2_data_policy_args.dart';

/// BigQuery Data Policy
///
///
/// To get more information about DataPolicy, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigquerydatapolicy/rest/v2/projects.locations.dataPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/column-data-masking-intro)
///
/// ## Example Usage
///
/// ### Bigquery Datapolicyv2 Datapolicy Basic
///
///
///
/// ### Bigquery Datapolicyv2 Datapolicy Predefined Masking
///
///
///
/// ### Bigquery Datapolicyv2 Datapolicy Routine
///
///
///
/// ### Bigquery Datapolicyv2 Datapolicy Withgrantees
///
///
///
///
/// ## Import
///
/// DataPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}`
///
/// * `{{project}}/{{location}}/{{data_policy_id}}`
///
/// * `{{location}}/{{data_policy_id}}`
///
/// When using the `pulumi import` command, DataPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default {{project}}/{{location}}/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy default {{location}}/{{data_policy_id}}
/// ```
class Datapolicyv2DataPolicy extends CustomResource {
  /// The policy used to specify data masking rule.
  /// Structure is documented below.
  late final Output<Datapolicyv2DataPolicyDataMaskingPolicy?> dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be
  /// unique within a project. Used as {data_policy_id} in part of the resource
  /// name.
  late final Output<String> dataPolicyId;

  /// Type of data policy.
  /// Possible values:
  /// DATA_MASKING_POLICY
  /// RAW_DATA_ACCESS_POLICY
  /// COLUMN_LEVEL_SECURITY_POLICY
  late final Output<String> dataPolicyType;

  /// The etag for this Data Policy.
  /// This field is used for UpdateDataPolicy calls. If Data Policy exists, this
  /// field is required and must match the server's etag. It will also be
  /// populated in the response of GetDataPolicy, CreateDataPolicy, and
  /// UpdateDataPolicy calls.
  late final Output<String> etag;

  /// The list of IAM principals that have Fine Grained Access to the underlying
  /// data goverened by this data policy.
  /// Uses the [IAM V2 principal
  /// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2) Only
  /// supports principal types users, groups, serviceaccounts, cloudidentity.
  /// This field is supported in V2 Data Policy only. In case of V1 data policies
  /// (i.e. verion = 1 and policy_tag is set), this field is not populated.
  late final Output<List<String>> grantees;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. Resource name of this data policy, in the format of
  /// `projects/{project_number}/locations/{location_id}/dataPolicies/{data_policy_id}`.
  late final Output<String> name;

  /// Policy tag resource name, in the format of
  /// `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  /// policy_tag is supported only for V1 data policies.
  late final Output<String> policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The version of the Data Policy resource.
  /// Possible values:
  /// V1
  /// V2
  late final Output<String> version;

  Datapolicyv2DataPolicy(
    String name, {
    Datapolicyv2DataPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datapolicyv2DataPolicy:Datapolicyv2DataPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataMaskingPolicy =
        registerOutput<Datapolicyv2DataPolicyDataMaskingPolicy?>(
            'dataMaskingPolicy');
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.dataPolicyType = registerOutput<String>('dataPolicyType');
    this.etag = registerOutput<String>('etag');
    this.grantees = registerOutput<List<String>>('grantees');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTag = registerOutput<String>('policyTag');
    this.project = registerOutput<String>('project');
    this.version = registerOutput<String>('version');
  }
}

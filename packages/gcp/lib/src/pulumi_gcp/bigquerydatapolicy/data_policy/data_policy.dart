import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_policy_data_masking_policy/data_policy_data_masking_policy.dart';
import 'data_policy_args.dart';

/// A BigQuery Data Policy
///
///
/// To get more information about DataPolicy, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigquerydatapolicy/rest/v1beta1/projects.locations.dataPolicies/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/column-data-masking-intro)
///
/// ## Example Usage
///
/// ### Bigquery Datapolicy Data Policy Basic
///
///
///
/// ### Bigquery Datapolicy Data Policy Routine
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
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default projects/{{project}}/locations/{{location}}/dataPolicies/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default {{project}}/{{location}}/{{data_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquerydatapolicy/dataPolicy:DataPolicy default {{location}}/{{data_policy_id}}
/// ```
class DataPolicy extends pulumi.CustomResource {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  late final pulumi.Output<DataPolicyDataMaskingPolicy?> dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  late final pulumi.Output<String> dataPolicyId;

  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  late final pulumi.Output<String> dataPolicyType;

  /// The name of the location of the data policy.
  late final pulumi.Output<String> location;

  /// Resource name of this data policy, in the format of projects/{project_number}/locations/{locationId}/dataPolicies/{dataPolicyId}.
  late final pulumi.Output<String> name;

  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  late final pulumi.Output<String> policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  DataPolicy(
    String name, {
    DataPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquerydatapolicy/dataPolicy:DataPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataMaskingPolicy =
        registerOutput<DataPolicyDataMaskingPolicy?>('dataMaskingPolicy');
    this.dataPolicyId = registerOutput<String>('dataPolicyId');
    this.dataPolicyType = registerOutput<String>('dataPolicyType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTag = registerOutput<String>('policyTag');
    this.project = registerOutput<String>('project');
  }
}

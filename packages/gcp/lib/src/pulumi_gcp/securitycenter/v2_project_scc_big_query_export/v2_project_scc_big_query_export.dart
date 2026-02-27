import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_project_scc_big_query_export_args.dart';

/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config.
/// It represents exporting Security Command Center data, including assets, findings, and security marks
/// using gcloud scc bqexports
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about ProjectSccBigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/projects.locations.bigQueryExports)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs/how-to-analyze-findings-in-big-query)
///
/// ## Example Usage
///
/// ### Scc V2 Project Big Query Export Config Basic
///
///
///
///
/// ## Import
///
/// ProjectSccBigQueryExport can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`
///
/// * `{{project}}/{{location}}/{{big_query_export_id}}`
///
/// * `{{location}}/{{big_query_export_id}}`
///
/// When using the `pulumi import` command, ProjectSccBigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectSccBigQueryExport:V2ProjectSccBigQueryExport default projects/{{project}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectSccBigQueryExport:V2ProjectSccBigQueryExport default {{project}}/{{location}}/{{big_query_export_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectSccBigQueryExport:V2ProjectSccBigQueryExport default {{location}}/{{big_query_export_id}}
/// ```
class V2ProjectSccBigQueryExport extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> bigQueryExportId;

  /// The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  late final pulumi.Output<String?> dataset;

  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String?> description;

  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form <field> <operator> <value> and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * >, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  late final pulumi.Output<String?> filter;

  /// location Id is provided by organization. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// Email address of the user who last edited the BigQuery export.
  /// This field is set by the server and will be ignored if provided on export creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// The resource name of this export, in the format
  /// `projects/{{project}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  late final pulumi.Output<String> name;

  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final pulumi.Output<String> principal;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  V2ProjectSccBigQueryExport(
    String name, {
    V2ProjectSccBigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectSccBigQueryExport:V2ProjectSccBigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQueryExportId = registerOutput<String>('bigQueryExportId');
    this.createTime = registerOutput<String>('createTime');
    this.dataset = registerOutput<String?>('dataset');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String?>('filter');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    this.principal = registerOutput<String>('principal');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

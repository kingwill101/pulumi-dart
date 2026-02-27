import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_scc_big_query_export_args.dart';

/// A Cloud Security Command Center (Cloud SCC) Big Query Export Config.
/// It represents exporting Security Command Center data, including assets, findings, and security marks
/// to a BigQuery instance.
///
/// > **Note:** In order to use Cloud SCC resources, your organization must be enrolled
/// in [SCC Standard/Premium](https://cloud.google.com/security-command-center/docs/quickstart-security-command-center).
/// Without doing so, you may run into errors during resource creation.
///
///
/// To get more information about FolderSccBigQueryExport, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/folders.bigQueryExports)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs/how-to-analyze-findings-in-big-query)
///
/// ## Example Usage
///
/// ### Scc Folder Big Query Export Config Basic
///
///
///
///
/// ## Import
///
/// FolderSccBigQueryExport can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/bigQueryExports/{{big_query_export_id}}`
///
/// * `{{folder}}/{{big_query_export_id}}`
///
/// When using the `pulumi import` command, FolderSccBigQueryExport can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport default folders/{{folder}}/bigQueryExports/{{big_query_export_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport default {{folder}}/{{big_query_export_id}}
/// ```
class FolderSccBigQueryExport extends pulumi.CustomResource {
  /// This must be unique within the organization.
  late final pulumi.Output<String> bigQueryExportId;

  /// The time at which the BigQuery export was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  late final pulumi.Output<String> dataset;

  /// The description of the export (max of 1024 characters).
  late final pulumi.Output<String> description;

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
  late final pulumi.Output<String> filter;

  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  late final pulumi.Output<String> folder;

  /// Email address of the user who last edited the BigQuery export.
  late final pulumi.Output<String> mostRecentEditor;

  /// The resource name of this export, in the format
  /// `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  late final pulumi.Output<String> name;

  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final pulumi.Output<String> principal;

  /// The most recent time at which the BigQuery export was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  FolderSccBigQueryExport(
    String name, {
    FolderSccBigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/folderSccBigQueryExport:FolderSccBigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQueryExportId = registerOutput<String>('bigQueryExportId');
    this.createTime = registerOutput<String>('createTime');
    this.dataset = registerOutput<String>('dataset');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<String>('filter');
    this.folder = registerOutput<String>('folder');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    this.principal = registerOutput<String>('principal');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

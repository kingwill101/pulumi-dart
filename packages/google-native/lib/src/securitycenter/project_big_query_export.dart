import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_big_query_export_args.dart';

/// Creates a BigQuery export.
/// Auto-naming is currently not supported for this resource.
class ProjectBigQueryExport extends pulumi.CustomResource {
  /// Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  late final pulumi.Output<String> bigQueryExportId;
  /// The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  late final pulumi.Output<String> createTime;
  /// The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  late final pulumi.Output<String> dataset;
  /// The description of the export (max of 1024 characters).
  late final pulumi.Output<String> description;
  /// Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  late final pulumi.Output<String> filter;
  /// Email address of the user who last edited the BigQuery export. This field is set by the server and will be ignored if provided on export creation or update.
  late final pulumi.Output<String> mostRecentEditor;
  /// The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: "organizations/{organization_id}/bigQueryExports/{export_id}" Example format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format: "projects/{project_id}/bigQueryExports/{export_id}" This field is provided in responses, and is ignored when provided in create requests.
  late final pulumi.Output<String> name;
  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  late final pulumi.Output<String> principal;
  late final pulumi.Output<String> project;
  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProjectBigQueryExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectBigQueryExport]. {@macro pulumi_securitycenter_v1_project_big_query_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectBigQueryExport(
    String name, {
    ProjectBigQueryExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:ProjectBigQueryExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQueryExportId = registerOutput<String>('bigQueryExportId');
    this.createTime = registerOutput<String>('createTime');
    this.dataset = registerOutput<String>('dataset');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<String>('filter');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.name = registerOutput<String>('name');
    this.principal = registerOutput<String>('principal');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

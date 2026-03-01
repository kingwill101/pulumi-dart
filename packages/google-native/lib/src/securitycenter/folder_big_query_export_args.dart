// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_folder_big_query_export_args_doc}
/// The set of arguments for FolderBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_folder_big_query_export_args_doc}
class FolderBigQueryExportArgs {
  /// Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  final pulumi.Input<String> bigQueryExportId;

  /// The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String>? dataset;

  /// The description of the export (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  final pulumi.Input<String>? filter;
  final pulumi.Input<String> folderId;

  /// The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: "organizations/{organization_id}/bigQueryExports/{export_id}" Example format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format: "projects/{project_id}/bigQueryExports/{export_id}" This field is provided in responses, and is ignored when provided in create requests.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderBigQueryExportArgs].
  /// [bigQueryExportId] Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  /// [dataset] The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  /// [description] The description of the export (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  /// [folderId] Required.
  /// [name] The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: "organizations/{organization_id}/bigQueryExports/{export_id}" Example format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format: "projects/{project_id}/bigQueryExports/{export_id}" This field is provided in responses, and is ignored when provided in create requests.
  FolderBigQueryExportArgs({
    required String bigQueryExportId,
    String? dataset,
    String? description,
    String? filter,
    required String folderId,
    String? name,
  }) : bigQueryExportId = pulumi.Input.asInput<String>(bigQueryExportId),
       dataset = pulumi.Input.asOptionalInput<String>(dataset),
       description = pulumi.Input.asOptionalInput<String>(description),
       filter = pulumi.Input.asOptionalInput<String>(filter),
       folderId = pulumi.Input.asInput<String>(folderId),
       name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'folderId': folderId,
      'name': ?name,
    };
  }

  factory FolderBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return FolderBigQueryExportArgs(
      bigQueryExportId: map['bigQueryExportId'] as String,
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      folderId: map['folderId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProjectBigQueryExport.
class GetProjectBigQueryExportResult {
  /// The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  final String createTime;

  /// The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final String dataset;

  /// The description of the export (max of 1024 characters).
  final String description;

  /// Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  final String filter;

  /// Email address of the user who last edited the BigQuery export. This field is set by the server and will be ignored if provided on export creation or update.
  final String mostRecentEditor;

  /// The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: "organizations/{organization_id}/bigQueryExports/{export_id}" Example format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format: "projects/{project_id}/bigQueryExports/{export_id}" This field is provided in responses, and is ignored when provided in create requests.
  final String name;

  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  final String principal;

  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  final String updateTime;

  /// Creates a new [GetProjectBigQueryExportResult].
  /// [createTime] The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  /// [dataset] The dataset to write findings' updates to. Its format is "projects/[project_id]/datasets/[bigquery_dataset_id]". BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  /// [description] The description of the export (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update events of findings. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. Parentheses are supported, and `OR` has higher precedence than `AND`. Restrictions have the form ` ` and may have a `-` character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals `true` and `false` without quotes.
  /// [mostRecentEditor] Email address of the user who last edited the BigQuery export. This field is set by the server and will be ignored if provided on export creation or update.
  /// [name] The relative resource name of this export. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name. Example format: "organizations/{organization_id}/bigQueryExports/{export_id}" Example format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format: "projects/{project_id}/bigQueryExports/{export_id}" This field is provided in responses, and is ignored when provided in create requests.
  /// [principal] The service account that needs permission to create table and upload data to the BigQuery dataset.
  /// [updateTime] The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  GetProjectBigQueryExportResult({
    required this.createTime,
    required this.dataset,
    required this.description,
    required this.filter,
    required this.mostRecentEditor,
    required this.name,
    required this.principal,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataset': dataset,
      'description': description,
      'filter': filter,
      'mostRecentEditor': mostRecentEditor,
      'name': name,
      'principal': principal,
      'updateTime': updateTime,
    };
  }

  factory GetProjectBigQueryExportResult.fromMap(Map<String, dynamic> map) {
    return GetProjectBigQueryExportResult(
      createTime: map['createTime'] as String,
      dataset: map['dataset'] as String,
      description: map['description'] as String,
      filter: map['filter'] as String,
      mostRecentEditor: map['mostRecentEditor'] as String,
      name: map['name'] as String,
      principal: map['principal'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

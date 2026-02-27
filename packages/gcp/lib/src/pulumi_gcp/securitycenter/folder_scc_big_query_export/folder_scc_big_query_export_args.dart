// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FolderSccBigQueryExport.
class FolderSccBigQueryExportArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> bigQueryExportId;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String> dataset;

  /// The description of the export (max of 1024 characters).
  final pulumi.Input<String> description;

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
  final pulumi.Input<String> filter;

  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  final pulumi.Input<String> folder;

  FolderSccBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.dataset,
    required this.description,
    required this.filter,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    map['dataset'] = dataset;
    map['description'] = description;
    map['filter'] = filter;
    map['folder'] = folder;
    return map;
  }

  factory FolderSccBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return FolderSccBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.asInput<String>(map['bigQueryExportId']),
      dataset: pulumi.Input.asInput<String>(map['dataset']),
      description: pulumi.Input.asInput<String>(map['description']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      folder: pulumi.Input.asInput<String>(map['folder']),
    );
  }
}

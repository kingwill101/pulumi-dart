// ignore_for_file: unused_element, unnecessary_cast

/// A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2BigQueryRegexResponse {
  /// If unset, this property matches all datasets.
  final String datasetIdRegex;

  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final String projectIdRegex;

  /// If unset, this property matches all tables.
  final String tableIdRegex;

  /// Creates a new [GooglePrivacyDlpV2BigQueryRegexResponse].
  /// [datasetIdRegex] If unset, this property matches all datasets.
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  /// [tableIdRegex] If unset, this property matches all tables.
  GooglePrivacyDlpV2BigQueryRegexResponse({
    required this.datasetIdRegex,
    required this.projectIdRegex,
    required this.tableIdRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetIdRegex'] = datasetIdRegex;
    map['projectIdRegex'] = projectIdRegex;
    map['tableIdRegex'] = tableIdRegex;
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryRegexResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexResponse(
      datasetIdRegex: map['datasetIdRegex'] as String,
      projectIdRegex: map['projectIdRegex'] as String,
      tableIdRegex: map['tableIdRegex'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2BigQueryRegex {
  /// If unset, this property matches all datasets.
  final String? datasetIdRegex;

  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final String? projectIdRegex;

  /// If unset, this property matches all tables.
  final String? tableIdRegex;

  GooglePrivacyDlpV2BigQueryRegex({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdRegexValue = datasetIdRegex;
    if (datasetIdRegexValue != null) {
      map['datasetIdRegex'] = datasetIdRegexValue;
    }
    final projectIdRegexValue = projectIdRegex;
    if (projectIdRegexValue != null) {
      map['projectIdRegex'] = projectIdRegexValue;
    }
    final tableIdRegexValue = tableIdRegex;
    if (tableIdRegexValue != null) {
      map['tableIdRegex'] = tableIdRegexValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryRegex.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegex(
      datasetIdRegex: map['datasetIdRegex'] == null
          ? null
          : map['datasetIdRegex'] as String,
      projectIdRegex: map['projectIdRegex'] == null
          ? null
          : map['projectIdRegex'] as String,
      tableIdRegex:
          map['tableIdRegex'] == null ? null : map['tableIdRegex'] as String,
    );
  }
}

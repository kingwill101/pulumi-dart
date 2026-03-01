// ignore_for_file: unused_element, unnecessary_cast

/// A pattern to match against one or more tables, datasets, or projects that contain BigQuery tables. At least one pattern must be specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2BigQueryRegex {
  /// If unset, this property matches all datasets.
  final String? datasetIdRegex;

  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final String? projectIdRegex;

  /// If unset, this property matches all tables.
  final String? tableIdRegex;

  /// Creates a new [GooglePrivacyDlpV2BigQueryRegex].
  /// [datasetIdRegex] If unset, this property matches all datasets.
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  /// [tableIdRegex] If unset, this property matches all tables.
  GooglePrivacyDlpV2BigQueryRegex({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetIdRegex': ?datasetIdRegex,
      'projectIdRegex': ?projectIdRegex,
      'tableIdRegex': ?tableIdRegex,
    };
  }

  factory GooglePrivacyDlpV2BigQueryRegex.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegex(
      datasetIdRegex: map['datasetIdRegex'] == null
          ? null
          : map['datasetIdRegex'] as String,
      projectIdRegex: map['projectIdRegex'] == null
          ? null
          : map['projectIdRegex'] as String,
      tableIdRegex: map['tableIdRegex'] == null
          ? null
          : map['tableIdRegex'] as String,
    );
  }
}

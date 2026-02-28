// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern {
  /// if unset, this property matches all datasets
  final String? datasetIdRegex;

  /// For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  final String? projectIdRegex;

  /// if unset, this property matches all tables
  final String? tableIdRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern].
  /// [datasetIdRegex] if unset, this property matches all datasets
  /// [projectIdRegex] For organizations, if unset, will match all projects. Has no effect for data profile configurations created within a project.
  /// [tableIdRegex] if unset, this property matches all tables
  PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern({
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

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTablesIncludeRegexesPattern(
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

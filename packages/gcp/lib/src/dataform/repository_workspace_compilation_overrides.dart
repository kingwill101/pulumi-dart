// ignore_for_file: unused_element, unnecessary_cast

class RepositoryWorkspaceCompilationOverrides {
  /// The default database (Google Cloud project ID).
  final String? defaultDatabase;

  /// The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final String? schemaSuffix;

  /// The prefix that should be prepended to all table names.
  final String? tablePrefix;

  /// Creates a new [RepositoryWorkspaceCompilationOverrides].
  /// [defaultDatabase] The default database (Google Cloud project ID).
  /// [schemaSuffix] The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] The prefix that should be prepended to all table names.
  RepositoryWorkspaceCompilationOverrides({
    this.defaultDatabase,
    this.schemaSuffix,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultDatabaseValue = defaultDatabase;
    if (defaultDatabaseValue != null) {
      map['defaultDatabase'] = defaultDatabaseValue;
    }
    final schemaSuffixValue = schemaSuffix;
    if (schemaSuffixValue != null) {
      map['schemaSuffix'] = schemaSuffixValue;
    }
    final tablePrefixValue = tablePrefix;
    if (tablePrefixValue != null) {
      map['tablePrefix'] = tablePrefixValue;
    }
    return map;
  }

  factory RepositoryWorkspaceCompilationOverrides.fromMap(
      Map<String, dynamic> map) {
    return RepositoryWorkspaceCompilationOverrides(
      defaultDatabase: map['defaultDatabase'] == null
          ? null
          : map['defaultDatabase'] as String,
      schemaSuffix:
          map['schemaSuffix'] == null ? null : map['schemaSuffix'] as String,
      tablePrefix:
          map['tablePrefix'] == null ? null : map['tablePrefix'] as String,
    );
  }
}

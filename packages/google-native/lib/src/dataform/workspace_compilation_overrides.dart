// ignore_for_file: unused_element, unnecessary_cast

/// Configures workspace compilation overrides for a repository. Primarily used by the UI (`console.cloud.google.com`). `schema_suffix` and `table_prefix` can have a special expression - `${workspaceName}`, which refers to the workspace name from which the compilation results will be created. API callers are expected to resolve the expression in these overrides and provide them explicitly in `code_compilation_config` (https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories.compilationResults#codecompilationconfig) when creating workspace-scoped compilation results.
class WorkspaceCompilationOverrides {
  /// Optional. The default database (Google Cloud project ID).
  final String? defaultDatabase;

  /// Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final String? schemaSuffix;

  /// Optional. The prefix that should be prepended to all table names.
  final String? tablePrefix;

  /// Creates a new [WorkspaceCompilationOverrides].
  /// [defaultDatabase] Optional. The default database (Google Cloud project ID).
  /// [schemaSuffix] Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] Optional. The prefix that should be prepended to all table names.
  WorkspaceCompilationOverrides({
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

  factory WorkspaceCompilationOverrides.fromMap(Map<String, dynamic> map) {
    return WorkspaceCompilationOverrides(
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

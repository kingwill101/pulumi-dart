// ignore_for_file: unused_element, unnecessary_cast

class RepositoryReleaseConfigCodeCompilationConfig {
  /// Optional. The default schema (BigQuery dataset ID) for assertions.
  final String? assertionSchema;

  /// Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  final String? databaseSuffix;

  /// Optional. The default database (Google Cloud project ID).
  final String? defaultDatabase;

  /// Optional. The default BigQuery location to use. Defaults to "US".
  /// See the BigQuery docs for a full list of locations: https://cloud.google.com/bigquery/docs/locations.
  final String? defaultLocation;

  /// Optional. The default schema (BigQuery dataset ID).
  final String? defaultSchema;

  /// Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  final String? schemaSuffix;

  /// Optional. The prefix that should be prepended to all table names.
  final String? tablePrefix;

  /// Optional. User-defined variables that are made available to project code during compilation.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? vars;

  /// Creates a new [RepositoryReleaseConfigCodeCompilationConfig].
  /// [assertionSchema] Optional. The default schema (BigQuery dataset ID) for assertions.
  /// [databaseSuffix] Optional. The suffix that should be appended to all database (Google Cloud project ID) names.
  /// [defaultDatabase] Optional. The default database (Google Cloud project ID).
  /// [defaultLocation] Optional. The default BigQuery location to use. Defaults to "US".
  /// [defaultSchema] Optional. The default schema (BigQuery dataset ID).
  /// [schemaSuffix] Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names.
  /// [tablePrefix] Optional. The prefix that should be prepended to all table names.
  /// [vars] Optional. User-defined variables that are made available to project code during compilation.
  RepositoryReleaseConfigCodeCompilationConfig({
    this.assertionSchema,
    this.databaseSuffix,
    this.defaultDatabase,
    this.defaultLocation,
    this.defaultSchema,
    this.schemaSuffix,
    this.tablePrefix,
    this.vars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionSchema': ?assertionSchema,
      'databaseSuffix': ?databaseSuffix,
      'defaultDatabase': ?defaultDatabase,
      'defaultLocation': ?defaultLocation,
      'defaultSchema': ?defaultSchema,
      'schemaSuffix': ?schemaSuffix,
      'tablePrefix': ?tablePrefix,
      'vars': ?vars,
    };
  }

  factory RepositoryReleaseConfigCodeCompilationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepositoryReleaseConfigCodeCompilationConfig(
      assertionSchema: map['assertionSchema'] == null
          ? null
          : map['assertionSchema'] as String,
      databaseSuffix: map['databaseSuffix'] == null
          ? null
          : map['databaseSuffix'] as String,
      defaultDatabase: map['defaultDatabase'] == null
          ? null
          : map['defaultDatabase'] as String,
      defaultLocation: map['defaultLocation'] == null
          ? null
          : map['defaultLocation'] as String,
      defaultSchema: map['defaultSchema'] == null
          ? null
          : map['defaultSchema'] as String,
      schemaSuffix: map['schemaSuffix'] == null
          ? null
          : map['schemaSuffix'] as String,
      tablePrefix: map['tablePrefix'] == null
          ? null
          : map['tablePrefix'] as String,
      vars: map['vars'] == null
          ? null
          : (map['vars'] as Map).cast<String, String>(),
    );
  }
}

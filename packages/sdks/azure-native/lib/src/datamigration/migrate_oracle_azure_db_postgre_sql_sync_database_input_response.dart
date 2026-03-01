// ignore_for_file: unused_element, unnecessary_cast


/// Database specific information for Oracle to Azure Database for PostgreSQL migration task inputs
class MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse {
  /// How to handle object name casing: either Preserve or ToLower
  final String? caseManipulation;
  /// Migration settings which tune the migration behavior
  final Map<String, String>? migrationSetting;
  /// Name of the migration pipeline
  final String? name;
  /// Name of the source schema
  final String? schemaName;
  /// Source settings to tune source endpoint migration behavior
  final Map<String, String>? sourceSetting;
  /// Mapping of source to target tables
  final Map<String, String>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final String? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final Map<String, String>? targetSetting;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse].
  /// [caseManipulation] How to handle object name casing: either Preserve or ToLower
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of the migration pipeline
  /// [schemaName] Name of the source schema
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse({
    this.caseManipulation,
    this.migrationSetting,
    this.name,
    this.schemaName,
    this.sourceSetting,
    this.tableMap,
    this.targetDatabaseName,
    this.targetSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseManipulation': ?caseManipulation,
      'migrationSetting': ?migrationSetting,
      'name': ?name,
      'schemaName': ?schemaName,
      'sourceSetting': ?sourceSetting,
      'tableMap': ?tableMap,
      'targetDatabaseName': ?targetDatabaseName,
      'targetSetting': ?targetSetting,
    };
  }

  factory MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse(
      caseManipulation: map['caseManipulation'] == null ? null : map['caseManipulation'] as String,
      migrationSetting: map['migrationSetting'] == null ? null : (map['migrationSetting'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      schemaName: map['schemaName'] == null ? null : map['schemaName'] as String,
      sourceSetting: map['sourceSetting'] == null ? null : (map['sourceSetting'] as Map).cast<String, String>(),
      tableMap: map['tableMap'] == null ? null : (map['tableMap'] as Map).cast<String, String>(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : map['targetDatabaseName'] as String,
      targetSetting: map['targetSetting'] == null ? null : (map['targetSetting'] as Map).cast<String, String>(),
    );
  }
}


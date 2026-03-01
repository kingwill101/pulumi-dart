// ignore_for_file: unused_element, unnecessary_cast


/// Database specific information for SQL to Azure SQL DB sync migration task inputs
class MigrateSqlServerSqlDbSyncDatabaseInputResponse {
  /// Unique identifier for database
  final String? id;
  /// Migration settings which tune the migration behavior
  final Map<String, String>? migrationSetting;
  /// Name of database
  final String? name;
  /// Schema name to be migrated
  final String? schemaName;
  /// Source settings to tune source endpoint migration behavior
  final Map<String, String>? sourceSetting;
  /// Mapping of source to target tables
  final Map<String, String>? tableMap;
  /// Target database name
  final String? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final Map<String, String>? targetSetting;

  /// Creates a new [MigrateSqlServerSqlDbSyncDatabaseInputResponse].
  /// [id] Unique identifier for database
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of database
  /// [schemaName] Schema name to be migrated
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Target database name
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigrateSqlServerSqlDbSyncDatabaseInputResponse({
    this.id,
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
      'id': ?id,
      'migrationSetting': ?migrationSetting,
      'name': ?name,
      'schemaName': ?schemaName,
      'sourceSetting': ?sourceSetting,
      'tableMap': ?tableMap,
      'targetDatabaseName': ?targetDatabaseName,
      'targetSetting': ?targetSetting,
    };
  }

  factory MigrateSqlServerSqlDbSyncDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncDatabaseInputResponse(
      id: map['id'] == null ? null : map['id'] as String,
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


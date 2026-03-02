// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for Oracle to Azure Database for PostgreSQL migration task inputs
class MigrateOracleAzureDbPostgreSqlSyncDatabaseInput {
  /// How to handle object name casing: either Preserve or ToLower
  final pulumi.Input<String>? caseManipulation;
  /// Migration settings which tune the migration behavior
  final pulumi.Input<Map<String, String>>? migrationSetting;
  /// Name of the migration pipeline
  final pulumi.Input<String>? name;
  /// Name of the source schema
  final pulumi.Input<String>? schemaName;
  /// Source settings to tune source endpoint migration behavior
  final pulumi.Input<Map<String, String>>? sourceSetting;
  /// Mapping of source to target tables
  final pulumi.Input<Map<String, String>>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final pulumi.Input<String>? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final pulumi.Input<Map<String, String>>? targetSetting;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncDatabaseInput].
  /// [caseManipulation] How to handle object name casing: either Preserve or ToLower
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of the migration pipeline
  /// [schemaName] Name of the source schema
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigrateOracleAzureDbPostgreSqlSyncDatabaseInput({
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

  factory MigrateOracleAzureDbPostgreSqlSyncDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncDatabaseInput(
      caseManipulation: map['caseManipulation'] == null ? null : (map['caseManipulation']! as String).input(),
      migrationSetting: map['migrationSetting'] == null ? null : ((map['migrationSetting']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      schemaName: map['schemaName'] == null ? null : (map['schemaName']! as String).input(),
      sourceSetting: map['sourceSetting'] == null ? null : ((map['sourceSetting']! as Map).cast<String, String>()).input(),
      tableMap: map['tableMap'] == null ? null : ((map['tableMap']! as Map).cast<String, String>()).input(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : (map['targetDatabaseName']! as String).input(),
      targetSetting: map['targetSetting'] == null ? null : ((map['targetSetting']! as Map).cast<String, String>()).input(),
    );
  }
}


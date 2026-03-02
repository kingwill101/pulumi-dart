// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for SQL to Azure SQL DB sync migration task inputs
class MigrateSqlServerSqlDbSyncDatabaseInput {
  /// Unique identifier for database
  final pulumi.Input<String>? id;
  /// Migration settings which tune the migration behavior
  final pulumi.Input<Map<String, String>>? migrationSetting;
  /// Name of database
  final pulumi.Input<String>? name;
  /// Schema name to be migrated
  final pulumi.Input<String>? schemaName;
  /// Source settings to tune source endpoint migration behavior
  final pulumi.Input<Map<String, String>>? sourceSetting;
  /// Mapping of source to target tables
  final pulumi.Input<Map<String, String>>? tableMap;
  /// Target database name
  final pulumi.Input<String>? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final pulumi.Input<Map<String, String>>? targetSetting;

  /// Creates a new [MigrateSqlServerSqlDbSyncDatabaseInput].
  /// [id] Unique identifier for database
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of database
  /// [schemaName] Schema name to be migrated
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Target database name
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigrateSqlServerSqlDbSyncDatabaseInput({
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

  factory MigrateSqlServerSqlDbSyncDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncDatabaseInput(
      id: map['id'] == null ? null : (map['id']! as String).input(),
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


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_table_input.dart';

/// Database specific information for PostgreSQL to Azure Database for PostgreSQL migration task inputs
class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput {
  /// Migration settings which tune the migration behavior
  final pulumi.Input<dynamic>? migrationSetting;
  /// Name of the database
  final pulumi.Input<String>? name;
  /// Tables selected for migration
  final pulumi.Input<List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput>>? selectedTables;
  /// Source settings to tune source endpoint migration behavior
  final pulumi.Input<Map<String, String>>? sourceSetting;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final pulumi.Input<String>? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final pulumi.Input<Map<String, String>>? targetSetting;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput].
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of the database
  /// [selectedTables] Tables selected for migration
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput({
    this.migrationSetting,
    this.name,
    this.selectedTables,
    this.sourceSetting,
    this.targetDatabaseName,
    this.targetSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationSetting': ?migrationSetting,
      'name': ?name,
      'selectedTables': ?pulumi.Input.mapOptionalInputValue<List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput>, List<Map<String, dynamic>>>(selectedTables, (value) => pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceSetting': ?sourceSetting,
      'targetDatabaseName': ?targetDatabaseName,
      'targetSetting': ?targetSetting,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput(
      migrationSetting: map['migrationSetting'] == null ? null : (map['migrationSetting']!).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      selectedTables: map['selectedTables'] == null ? null : (pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput>(map['selectedTables']!, (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceSetting: map['sourceSetting'] == null ? null : ((map['sourceSetting']! as Map).cast<String, String>()).input(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : (map['targetDatabaseName']! as String).input(),
      targetSetting: map['targetSetting'] == null ? null : ((map['targetSetting']! as Map).cast<String, String>()).input(),
    );
  }
}


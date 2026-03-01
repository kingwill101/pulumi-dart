// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_table_input_response.dart';

/// Database specific information for PostgreSQL to Azure Database for PostgreSQL migration task inputs
class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse {
  /// Result identifier
  final String id;
  /// Migration settings which tune the migration behavior
  final dynamic migrationSetting;
  /// Name of the database
  final String? name;
  /// Tables selected for migration
  final List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse>? selectedTables;
  /// Source settings to tune source endpoint migration behavior
  final Map<String, String>? sourceSetting;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final String? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final Map<String, String>? targetSetting;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse].
  /// [id] Result identifier
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of the database
  /// [selectedTables] Tables selected for migration
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse({
    required this.id,
    this.migrationSetting,
    this.name,
    this.selectedTables,
    this.sourceSetting,
    this.targetDatabaseName,
    this.targetSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'migrationSetting': ?migrationSetting,
      'name': ?name,
      'selectedTables': ?selectedTables == null ? null : pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse, Map<String, dynamic>>(selectedTables!, (value) => value.toMap()),
      'sourceSetting': ?sourceSetting,
      'targetDatabaseName': ?targetDatabaseName,
      'targetSetting': ?targetSetting,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse(
      id: map['id'] as String,
      migrationSetting: map['migrationSetting'] == null ? null : map['migrationSetting'],
      name: map['name'] == null ? null : map['name'] as String,
      selectedTables: map['selectedTables'] == null ? null : pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse>(map['selectedTables'], (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceSetting: map['sourceSetting'] == null ? null : (map['sourceSetting'] as Map).cast<String, String>(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : map['targetDatabaseName'] as String,
      targetSetting: map['targetSetting'] == null ? null : (map['targetSetting'] as Map).cast<String, String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for MySQL to Azure Database for MySQL migration task inputs
class MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse {
  /// Migration settings which tune the migration behavior
  final pulumi.Input<Map<String, String>?>? migrationSetting;
  /// Name of the database
  final pulumi.Input<String?>? name;
  /// Source settings to tune source endpoint migration behavior
  final pulumi.Input<Map<String, String>?>? sourceSetting;
  /// Mapping of source to target tables
  final pulumi.Input<Map<String, String>?>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final pulumi.Input<String?>? targetDatabaseName;
  /// Target settings to tune target endpoint migration behavior
  final pulumi.Input<Map<String, String>?>? targetSetting;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse].
  /// [migrationSetting] Migration settings which tune the migration behavior
  /// [name] Name of the database
  /// [sourceSetting] Source settings to tune source endpoint migration behavior
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  /// [targetSetting] Target settings to tune target endpoint migration behavior
  const MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse({
    this.migrationSetting,
    this.name,
    this.sourceSetting,
    this.tableMap,
    this.targetDatabaseName,
    this.targetSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationSetting': ?migrationSetting,
      'name': ?name,
      'sourceSetting': ?sourceSetting,
      'tableMap': ?tableMap,
      'targetDatabaseName': ?targetDatabaseName,
      'targetSetting': ?targetSetting,
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse(
      migrationSetting: (() { final guardedValue = map['migrationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSetting: (() { final guardedValue = map['sourceSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tableMap: (() { final guardedValue = map['tableMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDatabaseName: (() { final guardedValue = map['targetDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSetting: (() { final guardedValue = map['targetSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for Oracle to Azure Database for PostgreSQL migration task inputs
class MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse {
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

  factory MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse(
      caseManipulation: (() {
        final guardedValue = map['caseManipulation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migrationSetting: (() {
        final guardedValue = map['migrationSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaName: (() {
        final guardedValue = map['schemaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceSetting: (() {
        final guardedValue = map['sourceSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tableMap: (() {
        final guardedValue = map['tableMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetDatabaseName: (() {
        final guardedValue = map['targetDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetSetting: (() {
        final guardedValue = map['targetSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

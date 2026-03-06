// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for SQL to Azure SQL DB migration task inputs
class MigrateSqlServerSqlDbDatabaseInputResponse {
  /// id of the database
  final pulumi.Input<String>? id;
  /// Whether to set database read only before migration
  final pulumi.Input<bool>? makeSourceDbReadOnly;
  /// Name of the database
  final pulumi.Input<String>? name;
  /// Settings selected for DB schema migration.
  final pulumi.Input<dynamic>? schemaSetting;
  /// Mapping of source to target tables
  final pulumi.Input<Map<String, String>>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final pulumi.Input<String>? targetDatabaseName;

  /// Creates a new [MigrateSqlServerSqlDbDatabaseInputResponse].
  /// [id] id of the database
  /// [makeSourceDbReadOnly] Whether to set database read only before migration
  /// [name] Name of the database
  /// [schemaSetting] Settings selected for DB schema migration.
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  const MigrateSqlServerSqlDbDatabaseInputResponse({
    this.id,
    this.makeSourceDbReadOnly,
    this.name,
    this.schemaSetting,
    this.tableMap,
    this.targetDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'makeSourceDbReadOnly': ?makeSourceDbReadOnly,
      'name': ?name,
      'schemaSetting': ?schemaSetting,
      'tableMap': ?tableMap,
      'targetDatabaseName': ?targetDatabaseName,
    };
  }

  factory MigrateSqlServerSqlDbDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbDatabaseInputResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      makeSourceDbReadOnly: (() { final guardedValue = map['makeSourceDbReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaSetting: (() { final guardedValue = map['schemaSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tableMap: (() { final guardedValue = map['tableMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDatabaseName: (() { final guardedValue = map['targetDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


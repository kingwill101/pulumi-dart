// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for SQL to Azure SQL DB migration task inputs
class MigrateSqlServerSqlDbDatabaseInput {
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

  /// Creates a new [MigrateSqlServerSqlDbDatabaseInput].
  /// [id] id of the database
  /// [makeSourceDbReadOnly] Whether to set database read only before migration
  /// [name] Name of the database
  /// [schemaSetting] Settings selected for DB schema migration.
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  MigrateSqlServerSqlDbDatabaseInput({
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

  factory MigrateSqlServerSqlDbDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbDatabaseInput(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      makeSourceDbReadOnly: map['makeSourceDbReadOnly'] == null ? null : (map['makeSourceDbReadOnly'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      schemaSetting: map['schemaSetting'] == null ? null : (map['schemaSetting']).input(),
      tableMap: map['tableMap'] == null ? null : ((map['tableMap'] as Map).cast<String, String>()).input(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : (map['targetDatabaseName'] as String).input(),
    );
  }
}


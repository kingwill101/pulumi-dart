// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information for offline MySQL to Azure Database for MySQL migration task inputs
class MigrateMySqlAzureDbForMySqlOfflineDatabaseInput {
  /// Name of the database
  final pulumi.Input<String>? name;
  /// Mapping of source to target tables
  final pulumi.Input<Map<String, String>>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final pulumi.Input<String>? targetDatabaseName;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineDatabaseInput].
  /// [name] Name of the database
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  MigrateMySqlAzureDbForMySqlOfflineDatabaseInput({
    this.name,
    this.tableMap,
    this.targetDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tableMap': ?tableMap,
      'targetDatabaseName': ?targetDatabaseName,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineDatabaseInput(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tableMap: map['tableMap'] == null ? null : ((map['tableMap'] as Map).cast<String, String>()).input(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : (map['targetDatabaseName'] as String).input(),
    );
  }
}


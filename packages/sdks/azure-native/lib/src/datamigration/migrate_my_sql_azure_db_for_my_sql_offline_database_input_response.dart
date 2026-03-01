// ignore_for_file: unused_element, unnecessary_cast


/// Database specific information for offline MySQL to Azure Database for MySQL migration task inputs
class MigrateMySqlAzureDbForMySqlOfflineDatabaseInputResponse {
  /// Name of the database
  final String? name;
  /// Mapping of source to target tables
  final Map<String, String>? tableMap;
  /// Name of target database. Note: Target database will be truncated before starting migration.
  final String? targetDatabaseName;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineDatabaseInputResponse].
  /// [name] Name of the database
  /// [tableMap] Mapping of source to target tables
  /// [targetDatabaseName] Name of target database. Note: Target database will be truncated before starting migration.
  MigrateMySqlAzureDbForMySqlOfflineDatabaseInputResponse({
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

  factory MigrateMySqlAzureDbForMySqlOfflineDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineDatabaseInputResponse(
      name: map['name'] == null ? null : map['name'] as String,
      tableMap: map['tableMap'] == null ? null : (map['tableMap'] as Map).cast<String, String>(),
      targetDatabaseName: map['targetDatabaseName'] == null ? null : map['targetDatabaseName'] as String,
    );
  }
}


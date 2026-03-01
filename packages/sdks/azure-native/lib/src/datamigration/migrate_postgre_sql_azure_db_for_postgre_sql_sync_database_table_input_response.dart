// ignore_for_file: unused_element, unnecessary_cast


/// Selected tables for the migration
class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse {
  /// Name of the table to migrate
  final String? name;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse].
  /// [name] Name of the table to migrate
  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInputResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


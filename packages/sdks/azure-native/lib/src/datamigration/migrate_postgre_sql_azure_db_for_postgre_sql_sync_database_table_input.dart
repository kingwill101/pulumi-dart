// ignore_for_file: unused_element, unnecessary_cast


/// Selected tables for the migration
class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput {
  /// Name of the table to migrate
  final String? name;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput].
  /// [name] Name of the table to migrate
  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseTableInput(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


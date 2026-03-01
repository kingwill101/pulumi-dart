// ignore_for_file: unused_element, unnecessary_cast


/// Database backup settings.
class DatabaseBackupSetting {
  /// Contains a connection string to a database which is being backed up or restored. If the restore should happen to a new database, the database name inside is the new one.
  final String? connectionString;
  /// Contains a connection string name that is linked to the SiteConfig.ConnectionStrings.
  /// This is used during restore with overwrite connection strings options.
  final String? connectionStringName;
  /// Database type (e.g. SqlAzure / MySql).
  final String databaseType;
  final String? name;

  /// Creates a new [DatabaseBackupSetting].
  /// [connectionString] Contains a connection string to a database which is being backed up or restored. If the restore should happen to a new database, the database name inside is the new one.
  /// [connectionStringName] Contains a connection string name that is linked to the SiteConfig.ConnectionStrings.
  /// [databaseType] Database type (e.g. SqlAzure / MySql).
  /// [name] Optional.
  DatabaseBackupSetting({
    this.connectionString,
    this.connectionStringName,
    required this.databaseType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'connectionStringName': ?connectionStringName,
      'databaseType': databaseType,
      'name': ?name,
    };
  }

  factory DatabaseBackupSetting.fromMap(Map<String, dynamic> map) {
    return DatabaseBackupSetting(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      connectionStringName: map['connectionStringName'] == null ? null : map['connectionStringName'] as String,
      databaseType: map['databaseType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'file_share.dart';

/// Database specific information for SQL to Azure SQL DB Managed Instance migration task inputs
class MigrateSqlServerSqlMIDatabaseInput {
  /// The list of backup files to be used in case of existing backups.
  final List<String>? backupFilePaths;
  /// Backup file share information for backing up this database.
  final FileShare? backupFileShare;
  /// id of the database
  final String? id;
  /// Name of the database
  final String name;
  /// Name of the database at destination
  final String restoreDatabaseName;

  /// Creates a new [MigrateSqlServerSqlMIDatabaseInput].
  /// [backupFilePaths] The list of backup files to be used in case of existing backups.
  /// [backupFileShare] Backup file share information for backing up this database.
  /// [id] id of the database
  /// [name] Name of the database
  /// [restoreDatabaseName] Name of the database at destination
  MigrateSqlServerSqlMIDatabaseInput({
    this.backupFilePaths,
    this.backupFileShare,
    this.id,
    required this.name,
    required this.restoreDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFilePaths': ?backupFilePaths,
      'backupFileShare': ?backupFileShare == null ? null : backupFileShare!.toMap(),
      'id': ?id,
      'name': name,
      'restoreDatabaseName': restoreDatabaseName,
    };
  }

  factory MigrateSqlServerSqlMIDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMIDatabaseInput(
      backupFilePaths: map['backupFilePaths'] == null ? null : (map['backupFilePaths'] as List).cast<String>(),
      backupFileShare: map['backupFileShare'] == null ? null : FileShare.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      restoreDatabaseName: map['restoreDatabaseName'] as String,
    );
  }
}


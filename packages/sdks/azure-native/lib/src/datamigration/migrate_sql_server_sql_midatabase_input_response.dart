// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_response.dart';

/// Database specific information for SQL to Azure SQL DB Managed Instance migration task inputs
class MigrateSqlServerSqlMIDatabaseInputResponse {
  /// The list of backup files to be used in case of existing backups.
  final pulumi.Input<List<String>>? backupFilePaths;
  /// Backup file share information for backing up this database.
  final pulumi.Input<FileShareResponse>? backupFileShare;
  /// id of the database
  final pulumi.Input<String>? id;
  /// Name of the database
  final pulumi.Input<String> name;
  /// Name of the database at destination
  final pulumi.Input<String> restoreDatabaseName;

  /// Creates a new [MigrateSqlServerSqlMIDatabaseInputResponse].
  /// [backupFilePaths] The list of backup files to be used in case of existing backups.
  /// [backupFileShare] Backup file share information for backing up this database.
  /// [id] id of the database
  /// [name] Name of the database
  /// [restoreDatabaseName] Name of the database at destination
  MigrateSqlServerSqlMIDatabaseInputResponse({
    this.backupFilePaths,
    this.backupFileShare,
    this.id,
    required this.name,
    required this.restoreDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFilePaths': ?backupFilePaths,
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShareResponse, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'id': ?id,
      'name': name,
      'restoreDatabaseName': restoreDatabaseName,
    };
  }

  factory MigrateSqlServerSqlMIDatabaseInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMIDatabaseInputResponse(
      backupFilePaths: map['backupFilePaths'] == null ? null : ((map['backupFilePaths'] as List).cast<String>()).input(),
      backupFileShare: map['backupFileShare'] == null ? null : (FileShareResponse.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      restoreDatabaseName: (map['restoreDatabaseName'] as String).input(),
    );
  }
}


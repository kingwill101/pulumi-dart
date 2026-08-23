// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share.dart';

/// Database specific information for SQL to Azure SQL DB Managed Instance migration task inputs
class MigrateSqlServerSqlMIDatabaseInput {
  /// The list of backup files to be used in case of existing backups.
  final pulumi.Input<List<String>>? backupFilePaths;
  /// Backup file share information for backing up this database.
  final pulumi.Input<FileShare>? backupFileShare;
  /// id of the database
  final pulumi.Input<String>? id;
  /// Name of the database
  final pulumi.Input<String> name;
  /// Name of the database at destination
  final pulumi.Input<String> restoreDatabaseName;

  /// Creates a new [MigrateSqlServerSqlMIDatabaseInput].
  /// [backupFilePaths] The list of backup files to be used in case of existing backups.
  /// [backupFileShare] Backup file share information for backing up this database.
  /// [id] id of the database
  /// [name] Name of the database
  /// [restoreDatabaseName] Name of the database at destination
  const MigrateSqlServerSqlMIDatabaseInput({
    this.backupFilePaths,
    this.backupFileShare,
    this.id,
    required this.name,
    required this.restoreDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFilePaths': ?backupFilePaths,
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShare, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'id': ?id,
      'name': name,
      'restoreDatabaseName': restoreDatabaseName,
    };
  }

  factory MigrateSqlServerSqlMIDatabaseInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMIDatabaseInput(
      backupFilePaths: (() { final guardedValue = map['backupFilePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupFileShare: (() { final guardedValue = map['backupFileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileShare.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      restoreDatabaseName: pulumi.Input.fromValue(map['restoreDatabaseName'] as String),
    );
  }
}

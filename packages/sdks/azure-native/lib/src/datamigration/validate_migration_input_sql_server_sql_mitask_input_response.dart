// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share_response.dart';
import 'file_share_response.dart';
import 'migrate_sql_server_sql_midatabase_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for task that validates migration input for SQL to Azure SQL Managed Instance
class ValidateMigrationInputSqlServerSqlMITaskInputResponse {
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final pulumi.Input<BlobShareResponse> backupBlobShare;
  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShareResponse>? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup.
  final pulumi.Input<String>? backupMode;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInputResponse>> selectedDatabases;
  /// Logins to migrate
  final pulumi.Input<List<String>>? selectedLogins;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskInputResponse].
  /// [backupBlobShare] SAS URI of Azure Storage Account Container to be used for storing backup files.
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [backupMode] Backup Mode to specify whether to use existing backup or create new backup.
  /// [selectedDatabases] Databases to migrate
  /// [selectedLogins] Logins to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  ValidateMigrationInputSqlServerSqlMITaskInputResponse({
    required this.backupBlobShare,
    this.backupFileShare,
    this.backupMode,
    required this.selectedDatabases,
    this.selectedLogins,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupBlobShare': pulumi.Input.mapInputValue<BlobShareResponse, Map<String, dynamic>>(backupBlobShare, (value) => value.toMap()),
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShareResponse, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'backupMode': ?backupMode,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMIDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskInputResponse(
      backupBlobShare: (BlobShareResponse.fromMap((map['backupBlobShare'] as Map).cast<String, dynamic>())).input(),
      backupFileShare: map['backupFileShare'] == null ? null : (FileShareResponse.fromMap((map['backupFileShare']! as Map).cast<String, dynamic>())).input(),
      backupMode: map['backupMode'] == null ? null : (map['backupMode']! as String).input(),
      selectedDatabases: (pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selectedLogins: map['selectedLogins'] == null ? null : ((map['selectedLogins']! as List).cast<String>()).input(),
      sourceConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


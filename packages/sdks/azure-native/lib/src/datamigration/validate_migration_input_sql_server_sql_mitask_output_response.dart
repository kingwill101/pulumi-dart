// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_backup_info_response.dart';
import 'reportable_exception_response.dart';

/// Output for task that validates migration input for SQL to Azure SQL Managed Instance migrations
class ValidateMigrationInputSqlServerSqlMITaskOutputResponse {
  /// Errors associated with the BackupFolder path
  final pulumi.Input<List<ReportableExceptionResponse>> backupFolderErrors;
  /// Errors associated with backup share user name and password credentials
  final pulumi.Input<List<ReportableExceptionResponse>> backupShareCredentialsErrors;
  /// Errors associated with the storage account provided.
  final pulumi.Input<List<ReportableExceptionResponse>> backupStorageAccountErrors;
  /// Information about backup files when existing backup mode is used.
  final pulumi.Input<DatabaseBackupInfoResponse>? databaseBackupInfo;
  /// Errors associated with existing backup files.
  final pulumi.Input<List<ReportableExceptionResponse>> existingBackupErrors;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Name of database
  final pulumi.Input<String> name;
  /// Errors associated with the RestoreDatabaseName
  final pulumi.Input<List<ReportableExceptionResponse>> restoreDatabaseNameErrors;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskOutputResponse].
  /// [backupFolderErrors] Errors associated with the BackupFolder path
  /// [backupShareCredentialsErrors] Errors associated with backup share user name and password credentials
  /// [backupStorageAccountErrors] Errors associated with the storage account provided.
  /// [databaseBackupInfo] Information about backup files when existing backup mode is used.
  /// [existingBackupErrors] Errors associated with existing backup files.
  /// [id] Result identifier
  /// [name] Name of database
  /// [restoreDatabaseNameErrors] Errors associated with the RestoreDatabaseName
  ValidateMigrationInputSqlServerSqlMITaskOutputResponse({
    required this.backupFolderErrors,
    required this.backupShareCredentialsErrors,
    required this.backupStorageAccountErrors,
    this.databaseBackupInfo,
    required this.existingBackupErrors,
    required this.id,
    required this.name,
    required this.restoreDatabaseNameErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFolderErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(backupFolderErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupShareCredentialsErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(backupShareCredentialsErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupStorageAccountErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(backupStorageAccountErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseBackupInfo': ?pulumi.Input.mapOptionalInputValue<DatabaseBackupInfoResponse, Map<String, dynamic>>(databaseBackupInfo, (value) => value.toMap()),
      'existingBackupErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(existingBackupErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'name': name,
      'restoreDatabaseNameErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(restoreDatabaseNameErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskOutputResponse(
      backupFolderErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupFolderErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backupShareCredentialsErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupShareCredentialsErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backupStorageAccountErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupStorageAccountErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databaseBackupInfo: map['databaseBackupInfo'] == null ? null : (DatabaseBackupInfoResponse.fromMap((map['databaseBackupInfo']! as Map).cast<String, dynamic>())).input(),
      existingBackupErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['existingBackupErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      restoreDatabaseNameErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['restoreDatabaseNameErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


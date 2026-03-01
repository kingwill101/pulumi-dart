// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_backup_info_response.dart';
import 'reportable_exception_response.dart';

/// Output for task that validates migration input for SQL to Azure SQL Managed Instance migrations
class ValidateMigrationInputSqlServerSqlMITaskOutputResponse {
  /// Errors associated with the BackupFolder path
  final List<ReportableExceptionResponse> backupFolderErrors;
  /// Errors associated with backup share user name and password credentials
  final List<ReportableExceptionResponse> backupShareCredentialsErrors;
  /// Errors associated with the storage account provided.
  final List<ReportableExceptionResponse> backupStorageAccountErrors;
  /// Information about backup files when existing backup mode is used.
  final DatabaseBackupInfoResponse? databaseBackupInfo;
  /// Errors associated with existing backup files.
  final List<ReportableExceptionResponse> existingBackupErrors;
  /// Result identifier
  final String id;
  /// Name of database
  final String name;
  /// Errors associated with the RestoreDatabaseName
  final List<ReportableExceptionResponse> restoreDatabaseNameErrors;

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
      'backupFolderErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(backupFolderErrors, (value) => value.toMap()),
      'backupShareCredentialsErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(backupShareCredentialsErrors, (value) => value.toMap()),
      'backupStorageAccountErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(backupStorageAccountErrors, (value) => value.toMap()),
      'databaseBackupInfo': ?databaseBackupInfo == null ? null : databaseBackupInfo!.toMap(),
      'existingBackupErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(existingBackupErrors, (value) => value.toMap()),
      'id': id,
      'name': name,
      'restoreDatabaseNameErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(restoreDatabaseNameErrors, (value) => value.toMap()),
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskOutputResponse(
      backupFolderErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupFolderErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      backupShareCredentialsErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupShareCredentialsErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      backupStorageAccountErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['backupStorageAccountErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      databaseBackupInfo: map['databaseBackupInfo'] == null ? null : DatabaseBackupInfoResponse.fromMap((map['databaseBackupInfo'] as Map).cast<String, dynamic>()),
      existingBackupErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['existingBackupErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      restoreDatabaseNameErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['restoreDatabaseNameErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


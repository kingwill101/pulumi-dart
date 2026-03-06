// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share_response.dart';
import 'file_share_response.dart';
import 'migrate_sql_server_sql_midatabase_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSqlServerSqlMITaskInputResponse {
  /// Azure Active Directory domain name in the format of 'contoso.com' for federated Azure AD or 'contoso.onmicrosoft.com' for managed domain, required if and only if Windows logins are selected
  final pulumi.Input<String>? aadDomainName;
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final pulumi.Input<BlobShareResponse> backupBlobShare;
  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShareResponse>? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup. If using existing backups, backup file paths are required to be provided in selectedDatabases.
  final pulumi.Input<String>? backupMode;
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Agent Jobs to migrate.
  final pulumi.Input<List<String>>? selectedAgentJobs;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInputResponse>> selectedDatabases;
  /// Logins to migrate.
  final pulumi.Input<List<String>>? selectedLogins;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Date and time relative to UTC when the migration was started on
  final pulumi.Input<String>? startedOn;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [MigrateSqlServerSqlMITaskInputResponse].
  /// [aadDomainName] Azure Active Directory domain name in the format of 'contoso.com' for federated Azure AD or 'contoso.onmicrosoft.com' for managed domain, required if and only if Windows logins are selected
  /// [backupBlobShare] SAS URI of Azure Storage Account Container to be used for storing backup files.
  /// [backupFileShare] Backup file share information for all selected databases.
  /// [backupMode] Backup Mode to specify whether to use existing backup or create new backup. If using existing backups, backup file paths are required to be provided in selectedDatabases.
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedAgentJobs] Agent Jobs to migrate.
  /// [selectedDatabases] Databases to migrate
  /// [selectedLogins] Logins to migrate.
  /// [sourceConnectionInfo] Information for connecting to source
  /// [startedOn] Date and time relative to UTC when the migration was started on
  /// [targetConnectionInfo] Information for connecting to target
  const MigrateSqlServerSqlMITaskInputResponse({
    this.aadDomainName,
    required this.backupBlobShare,
    this.backupFileShare,
    this.backupMode,
    this.encryptedKeyForSecureFields,
    this.selectedAgentJobs,
    required this.selectedDatabases,
    this.selectedLogins,
    required this.sourceConnectionInfo,
    this.startedOn,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadDomainName': ?aadDomainName,
      'backupBlobShare': pulumi.Input.mapInputValue<BlobShareResponse, Map<String, dynamic>>(backupBlobShare, (value) => value.toMap()),
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShareResponse, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'backupMode': ?backupMode,
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedAgentJobs': ?selectedAgentJobs,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMIDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'startedOn': ?startedOn,
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlMITaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskInputResponse(
      aadDomainName: (() { final guardedValue = map['aadDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupBlobShare: pulumi.Input.fromValue(BlobShareResponse.fromMap((map['backupBlobShare']! as Map).cast<String, dynamic>())),
      backupFileShare: (() { final guardedValue = map['backupFileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileShareResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupMode: (() { final guardedValue = map['backupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedKeyForSecureFields: (() { final guardedValue = map['encryptedKeyForSecureFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectedAgentJobs: (() { final guardedValue = map['selectedAgentJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInputResponse>(map['selectedDatabases']!, (value) => MigrateSqlServerSqlMIDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      selectedLogins: (() { final guardedValue = map['selectedLogins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


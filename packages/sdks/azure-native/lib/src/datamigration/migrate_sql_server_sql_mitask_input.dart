// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share.dart';
import 'file_share.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSqlServerSqlMITaskInput {
  /// Azure Active Directory domain name in the format of 'contoso.com' for federated Azure AD or 'contoso.onmicrosoft.com' for managed domain, required if and only if Windows logins are selected
  final pulumi.Input<String>? aadDomainName;
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final pulumi.Input<BlobShare> backupBlobShare;
  /// Backup file share information for all selected databases.
  final pulumi.Input<FileShare>? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup. If using existing backups, backup file paths are required to be provided in selectedDatabases.
  final pulumi.Input<String>? backupMode;
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Agent Jobs to migrate.
  final pulumi.Input<List<String>>? selectedAgentJobs;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlMIDatabaseInput>> selectedDatabases;
  /// Logins to migrate.
  final pulumi.Input<List<String>>? selectedLogins;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Date and time relative to UTC when the migration was started on
  final pulumi.Input<String>? startedOn;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [MigrateSqlServerSqlMITaskInput].
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
  MigrateSqlServerSqlMITaskInput({
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
      'backupBlobShare': pulumi.Input.mapInputValue<BlobShare, Map<String, dynamic>>(backupBlobShare, (value) => value.toMap()),
      'backupFileShare': ?pulumi.Input.mapOptionalInputValue<FileShare, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'backupMode': ?backupMode,
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedAgentJobs': ?selectedAgentJobs,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMIDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'startedOn': ?startedOn,
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlMITaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskInput(
      aadDomainName: map['aadDomainName'] == null ? null : (map['aadDomainName'] as String).input(),
      backupBlobShare: (BlobShare.fromMap((map['backupBlobShare'] as Map).cast<String, dynamic>())).input(),
      backupFileShare: map['backupFileShare'] == null ? null : (FileShare.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>())).input(),
      backupMode: map['backupMode'] == null ? null : (map['backupMode'] as String).input(),
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : (map['encryptedKeyForSecureFields'] as String).input(),
      selectedAgentJobs: map['selectedAgentJobs'] == null ? null : ((map['selectedAgentJobs'] as List).cast<String>()).input(),
      selectedDatabases: (pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selectedLogins: map['selectedLogins'] == null ? null : ((map['selectedLogins'] as List).cast<String>()).input(),
      sourceConnectionInfo: (SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      startedOn: map['startedOn'] == null ? null : (map['startedOn'] as String).input(),
      targetConnectionInfo: (SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


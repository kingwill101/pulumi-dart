// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_share.dart';
import 'file_share.dart';
import 'migrate_sql_server_sql_midatabase_input.dart';
import 'sql_connection_info.dart';

/// Input for task that migrates SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSqlServerSqlMITaskInput {
  /// Azure Active Directory domain name in the format of 'contoso.com' for federated Azure AD or 'contoso.onmicrosoft.com' for managed domain, required if and only if Windows logins are selected
  final String? aadDomainName;
  /// SAS URI of Azure Storage Account Container to be used for storing backup files.
  final BlobShare backupBlobShare;
  /// Backup file share information for all selected databases.
  final FileShare? backupFileShare;
  /// Backup Mode to specify whether to use existing backup or create new backup. If using existing backups, backup file paths are required to be provided in selectedDatabases.
  final String? backupMode;
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Agent Jobs to migrate.
  final List<String>? selectedAgentJobs;
  /// Databases to migrate
  final List<MigrateSqlServerSqlMIDatabaseInput> selectedDatabases;
  /// Logins to migrate.
  final List<String>? selectedLogins;
  /// Information for connecting to source
  final SqlConnectionInfo sourceConnectionInfo;
  /// Date and time relative to UTC when the migration was started on
  final String? startedOn;
  /// Information for connecting to target
  final SqlConnectionInfo targetConnectionInfo;

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
      'backupBlobShare': backupBlobShare.toMap(),
      'backupFileShare': ?backupFileShare == null ? null : backupFileShare!.toMap(),
      'backupMode': ?backupMode,
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedAgentJobs': ?selectedAgentJobs,
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlMIDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'selectedLogins': ?selectedLogins,
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'startedOn': ?startedOn,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigrateSqlServerSqlMITaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskInput(
      aadDomainName: map['aadDomainName'] == null ? null : map['aadDomainName'] as String,
      backupBlobShare: BlobShare.fromMap((map['backupBlobShare'] as Map).cast<String, dynamic>()),
      backupFileShare: map['backupFileShare'] == null ? null : FileShare.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      backupMode: map['backupMode'] == null ? null : map['backupMode'] as String,
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      selectedAgentJobs: map['selectedAgentJobs'] == null ? null : (map['selectedAgentJobs'] as List).cast<String>(),
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlMIDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlMIDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      selectedLogins: map['selectedLogins'] == null ? null : (map['selectedLogins'] as List).cast<String>(),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


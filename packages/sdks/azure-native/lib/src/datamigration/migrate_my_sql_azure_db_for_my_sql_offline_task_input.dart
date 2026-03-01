// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_offline_database_input.dart';
import 'my_sql_connection_info.dart';

/// Input for the task that migrates MySQL databases to Azure Database for MySQL for offline migrations
class MigrateMySqlAzureDbForMySqlOfflineTaskInput {
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Setting to set the source server read only
  final bool? makeSourceServerReadOnly;
  /// Optional parameters for fine tuning the data transfer rate during migration
  final Map<String, String>? optionalAgentSettings;
  /// Databases to migrate
  final List<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput> selectedDatabases;
  /// Connection information for source MySQL
  final MySqlConnectionInfo sourceConnectionInfo;
  /// Parameter to specify when the migration started
  final String? startedOn;
  /// Connection information for target Azure Database for MySQL
  final MySqlConnectionInfo targetConnectionInfo;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskInput].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [makeSourceServerReadOnly] Setting to set the source server read only
  /// [optionalAgentSettings] Optional parameters for fine tuning the data transfer rate during migration
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source MySQL
  /// [startedOn] Parameter to specify when the migration started
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL
  MigrateMySqlAzureDbForMySqlOfflineTaskInput({
    this.encryptedKeyForSecureFields,
    this.makeSourceServerReadOnly,
    this.optionalAgentSettings,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    this.startedOn,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'makeSourceServerReadOnly': ?makeSourceServerReadOnly,
      'optionalAgentSettings': ?optionalAgentSettings,
      'selectedDatabases': pulumi.Input.encodeList<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'startedOn': ?startedOn,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskInput(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      makeSourceServerReadOnly: map['makeSourceServerReadOnly'] == null ? null : map['makeSourceServerReadOnly'] as bool,
      optionalAgentSettings: map['optionalAgentSettings'] == null ? null : (map['optionalAgentSettings'] as Map).cast<String, String>(),
      selectedDatabases: pulumi.Input.decodeList<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput>(map['selectedDatabases'], (value) => MigrateMySqlAzureDbForMySqlOfflineDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: MySqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
      targetConnectionInfo: MySqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


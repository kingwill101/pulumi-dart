// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_offline_database_input.dart';
import 'my_sql_connection_info.dart';

/// Input for the task that migrates MySQL databases to Azure Database for MySQL for offline migrations
class MigrateMySqlAzureDbForMySqlOfflineTaskInput {
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Setting to set the source server read only
  final pulumi.Input<bool>? makeSourceServerReadOnly;
  /// Optional parameters for fine tuning the data transfer rate during migration
  final pulumi.Input<Map<String, String>>? optionalAgentSettings;
  /// Databases to migrate
  final pulumi.Input<List<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput>> selectedDatabases;
  /// Connection information for source MySQL
  final pulumi.Input<MySqlConnectionInfo> sourceConnectionInfo;
  /// Parameter to specify when the migration started
  final pulumi.Input<String>? startedOn;
  /// Connection information for target Azure Database for MySQL
  final pulumi.Input<MySqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskInput].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [makeSourceServerReadOnly] Setting to set the source server read only
  /// [optionalAgentSettings] Optional parameters for fine tuning the data transfer rate during migration
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source MySQL
  /// [startedOn] Parameter to specify when the migration started
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL
  const MigrateMySqlAzureDbForMySqlOfflineTaskInput({
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
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'startedOn': ?startedOn,
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskInput(
      encryptedKeyForSecureFields: (() { final guardedValue = map['encryptedKeyForSecureFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      makeSourceServerReadOnly: (() { final guardedValue = map['makeSourceServerReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optionalAgentSettings: (() { final guardedValue = map['optionalAgentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateMySqlAzureDbForMySqlOfflineDatabaseInput>(map['selectedDatabases']!, (value) => MigrateMySqlAzureDbForMySqlOfflineDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


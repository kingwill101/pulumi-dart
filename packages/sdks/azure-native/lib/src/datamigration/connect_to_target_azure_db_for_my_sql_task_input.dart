// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info.dart';

/// Input for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskInput {
  /// Flag for whether or not the migration is offline
  final pulumi.Input<bool>? isOfflineMigration;
  /// Connection information for source MySQL server
  final pulumi.Input<MySqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL server
  final pulumi.Input<MySqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskInput].
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Connection information for source MySQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL server
  ConnectToTargetAzureDbForMySqlTaskInput({
    this.isOfflineMigration,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskInput(
      isOfflineMigration: map['isOfflineMigration'] == null ? null : (map['isOfflineMigration'] as bool).input(),
      sourceConnectionInfo: (MySqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (MySqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


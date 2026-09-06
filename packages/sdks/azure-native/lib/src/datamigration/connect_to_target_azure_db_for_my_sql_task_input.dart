// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info.dart';

/// Input for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskInput {
  /// Flag for whether or not the migration is offline
  final pulumi.Input<bool?>? isOfflineMigration;
  /// Connection information for source MySQL server
  final pulumi.Input<MySqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL server
  final pulumi.Input<MySqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskInput].
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Connection information for source MySQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL server
  ConnectToTargetAzureDbForMySqlTaskInput({
    pulumi.Input<bool?>? isOfflineMigration,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  }) : isOfflineMigration = isOfflineMigration ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskInput(
      isOfflineMigration: (() { final guardedValue = map['isOfflineMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

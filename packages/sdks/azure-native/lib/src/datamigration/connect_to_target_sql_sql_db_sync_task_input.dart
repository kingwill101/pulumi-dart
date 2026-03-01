// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info.dart';

/// Input for the task that validates connection to Azure SQL DB and target server requirements
class ConnectToTargetSqlSqlDbSyncTaskInput {
  /// Connection information for source SQL Server
  final SqlConnectionInfo sourceConnectionInfo;
  /// Connection information for target SQL DB
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlSqlDbSyncTaskInput].
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [targetConnectionInfo] Connection information for target SQL DB
  ConnectToTargetSqlSqlDbSyncTaskInput({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetSqlSqlDbSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlSqlDbSyncTaskInput(
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'postgre_sql_connection_info.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskInput {
  /// Connection information for source PostgreSQL server
  final PostgreSqlConnectionInfo sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL server
  final PostgreSqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskInput].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetAzureDbForPostgreSqlSyncTaskInput({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskInput(
      sourceConnectionInfo: PostgreSqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


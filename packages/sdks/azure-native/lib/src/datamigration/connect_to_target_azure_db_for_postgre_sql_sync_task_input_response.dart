// ignore_for_file: unused_element, unnecessary_cast

import 'postgre_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse {
  /// Connection information for source PostgreSQL server
  final PostgreSqlConnectionInfoResponse sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL server
  final PostgreSqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse(
      sourceConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


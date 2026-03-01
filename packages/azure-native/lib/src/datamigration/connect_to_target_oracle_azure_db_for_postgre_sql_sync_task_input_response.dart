// ignore_for_file: unused_element, unnecessary_cast

import 'postgre_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse {
  /// Connection information for target Azure Database for PostgreSQL server
  final PostgreSqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse].
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse({
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse(
      targetConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


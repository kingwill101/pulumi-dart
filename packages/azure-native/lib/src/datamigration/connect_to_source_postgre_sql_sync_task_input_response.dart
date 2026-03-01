// ignore_for_file: unused_element, unnecessary_cast

import 'postgre_sql_connection_info_response.dart';

/// Input for the task that validates connection to PostgreSQL and source server requirements
class ConnectToSourcePostgreSqlSyncTaskInputResponse {
  /// Connection information for source PostgreSQL server
  final PostgreSqlConnectionInfoResponse sourceConnectionInfo;

  /// Creates a new [ConnectToSourcePostgreSqlSyncTaskInputResponse].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  ConnectToSourcePostgreSqlSyncTaskInputResponse({
    required this.sourceConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
    };
  }

  factory ConnectToSourcePostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourcePostgreSqlSyncTaskInputResponse(
      sourceConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


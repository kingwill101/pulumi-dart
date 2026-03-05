// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse {
  /// Connection information for target Azure Database for PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse].
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse({
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInputResponse(
      targetConnectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


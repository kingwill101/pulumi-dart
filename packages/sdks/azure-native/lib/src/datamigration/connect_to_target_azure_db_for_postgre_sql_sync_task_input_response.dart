// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse {
  /// Connection information for source PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  const ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse(
      sourceConnectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

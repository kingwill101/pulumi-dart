// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskInput {
  /// Connection information for source PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskInput].
  /// [sourceConnectionInfo] Connection information for source PostgreSQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetAzureDbForPostgreSqlSyncTaskInput({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskInput(
      sourceConnectionInfo: (PostgreSqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


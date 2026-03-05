// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgre_sql_connection_info.dart';

/// Input for the task that validates connection to Azure Database for PostgreSQL and target server requirements for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput {
  /// Connection information for target Azure Database for PostgreSQL server
  final pulumi.Input<PostgreSqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput].
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL server
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput({
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput(
      targetConnectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


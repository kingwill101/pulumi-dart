// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure SQL DB and target server requirements
class ConnectToTargetSqlSqlDbSyncTaskInputResponse {
  /// Connection information for source SQL Server
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target SQL DB
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlSqlDbSyncTaskInputResponse].
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [targetConnectionInfo] Connection information for target SQL DB
  ConnectToTargetSqlSqlDbSyncTaskInputResponse({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetSqlSqlDbSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlSqlDbSyncTaskInputResponse(
      sourceConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


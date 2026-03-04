// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info.dart';

/// Input for the task that validates connection to Azure SQL DB and target server requirements
class ConnectToTargetSqlSqlDbSyncTaskInput {
  /// Connection information for source SQL Server
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;

  /// Connection information for target SQL DB
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlSqlDbSyncTaskInput].
  /// [sourceConnectionInfo] Connection information for source SQL Server
  /// [targetConnectionInfo] Connection information for target SQL DB
  ConnectToTargetSqlSqlDbSyncTaskInput({
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(
            sourceConnectionInfo,
            (value) => value.toMap(),
          ),
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(
            targetConnectionInfo,
            (value) => value.toMap(),
          ),
    };
  }

  factory ConnectToTargetSqlSqlDbSyncTaskInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToTargetSqlSqlDbSyncTaskInput(
      sourceConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfo.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfo.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

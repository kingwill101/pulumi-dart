// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesSqlSyncTaskInput {
  /// List of source database names to collect tables for
  final pulumi.Input<List<String>> selectedSourceDatabases;
  /// List of target database names to collect tables for
  final pulumi.Input<List<String>> selectedTargetDatabases;
  /// Connection information for SQL Server
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for SQL DB
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [GetUserTablesSqlSyncTaskInput].
  /// [selectedSourceDatabases] List of source database names to collect tables for
  /// [selectedTargetDatabases] List of target database names to collect tables for
  /// [sourceConnectionInfo] Connection information for SQL Server
  /// [targetConnectionInfo] Connection information for SQL DB
  const GetUserTablesSqlSyncTaskInput({
    required this.selectedSourceDatabases,
    required this.selectedTargetDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedSourceDatabases': selectedSourceDatabases,
      'selectedTargetDatabases': selectedTargetDatabases,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory GetUserTablesSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlSyncTaskInput(
      selectedSourceDatabases: pulumi.Input.fromValue((map['selectedSourceDatabases'] as List).cast<String>()),
      selectedTargetDatabases: pulumi.Input.fromValue((map['selectedTargetDatabases'] as List).cast<String>()),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


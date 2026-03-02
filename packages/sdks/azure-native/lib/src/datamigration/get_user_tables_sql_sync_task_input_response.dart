// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info_response.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesSqlSyncTaskInputResponse {
  /// List of source database names to collect tables for
  final pulumi.Input<List<String>> selectedSourceDatabases;
  /// List of target database names to collect tables for
  final pulumi.Input<List<String>> selectedTargetDatabases;
  /// Connection information for SQL Server
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for SQL DB
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [GetUserTablesSqlSyncTaskInputResponse].
  /// [selectedSourceDatabases] List of source database names to collect tables for
  /// [selectedTargetDatabases] List of target database names to collect tables for
  /// [sourceConnectionInfo] Connection information for SQL Server
  /// [targetConnectionInfo] Connection information for SQL DB
  GetUserTablesSqlSyncTaskInputResponse({
    required this.selectedSourceDatabases,
    required this.selectedTargetDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedSourceDatabases': selectedSourceDatabases,
      'selectedTargetDatabases': selectedTargetDatabases,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory GetUserTablesSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlSyncTaskInputResponse(
      selectedSourceDatabases: ((map['selectedSourceDatabases'] as List).cast<String>()).input(),
      selectedTargetDatabases: ((map['selectedTargetDatabases'] as List).cast<String>()).input(),
      sourceConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


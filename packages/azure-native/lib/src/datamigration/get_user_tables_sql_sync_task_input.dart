// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info.dart';

/// Input for the task that collects user tables for the given list of databases
class GetUserTablesSqlSyncTaskInput {
  /// List of source database names to collect tables for
  final List<String> selectedSourceDatabases;
  /// List of target database names to collect tables for
  final List<String> selectedTargetDatabases;
  /// Connection information for SQL Server
  final SqlConnectionInfo sourceConnectionInfo;
  /// Connection information for SQL DB
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [GetUserTablesSqlSyncTaskInput].
  /// [selectedSourceDatabases] List of source database names to collect tables for
  /// [selectedTargetDatabases] List of target database names to collect tables for
  /// [sourceConnectionInfo] Connection information for SQL Server
  /// [targetConnectionInfo] Connection information for SQL DB
  GetUserTablesSqlSyncTaskInput({
    required this.selectedSourceDatabases,
    required this.selectedTargetDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedSourceDatabases': selectedSourceDatabases,
      'selectedTargetDatabases': selectedTargetDatabases,
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory GetUserTablesSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlSyncTaskInput(
      selectedSourceDatabases: (map['selectedSourceDatabases'] as List).cast<String>(),
      selectedTargetDatabases: (map['selectedTargetDatabases'] as List).cast<String>(),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


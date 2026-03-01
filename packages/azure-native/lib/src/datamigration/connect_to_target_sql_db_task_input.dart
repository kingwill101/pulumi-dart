// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info.dart';

/// Input for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskInput {
  /// Boolean flag indicating whether to query object counts for each database on the target server
  final bool? queryObjectCounts;
  /// Connection information for target SQL DB
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlDbTaskInput].
  /// [queryObjectCounts] Boolean flag indicating whether to query object counts for each database on the target server
  /// [targetConnectionInfo] Connection information for target SQL DB
  ConnectToTargetSqlDbTaskInput({
    this.queryObjectCounts,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryObjectCounts': ?queryObjectCounts,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetSqlDbTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlDbTaskInput(
      queryObjectCounts: map['queryObjectCounts'] == null ? null : map['queryObjectCounts'] as bool,
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info_response.dart';

/// Input for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskInputResponse {
  /// Boolean flag indicating whether to query object counts for each database on the target server
  final bool? queryObjectCounts;
  /// Connection information for target SQL DB
  final SqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [ConnectToTargetSqlDbTaskInputResponse].
  /// [queryObjectCounts] Boolean flag indicating whether to query object counts for each database on the target server
  /// [targetConnectionInfo] Connection information for target SQL DB
  ConnectToTargetSqlDbTaskInputResponse({
    this.queryObjectCounts,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryObjectCounts': ?queryObjectCounts,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetSqlDbTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlDbTaskInputResponse(
      queryObjectCounts: map['queryObjectCounts'] == null ? null : map['queryObjectCounts'] as bool,
      targetConnectionInfo: SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


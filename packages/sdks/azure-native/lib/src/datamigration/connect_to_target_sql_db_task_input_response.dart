// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info_response.dart';

/// Input for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskInputResponse {
  /// Boolean flag indicating whether to query object counts for each database on the target server
  final pulumi.Input<bool>? queryObjectCounts;

  /// Connection information for target SQL DB
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

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
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<
            SqlConnectionInfoResponse,
            Map<String, dynamic>
          >(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetSqlDbTaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToTargetSqlDbTaskInputResponse(
      queryObjectCounts: (() {
        final guardedValue = map['queryObjectCounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      targetConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfoResponse.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

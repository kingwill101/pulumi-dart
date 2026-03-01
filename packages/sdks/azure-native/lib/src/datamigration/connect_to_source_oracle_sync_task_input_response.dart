// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_connection_info_response.dart';

/// Input for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskInputResponse {
  /// Information for connecting to Oracle source
  final OracleConnectionInfoResponse sourceConnectionInfo;

  /// Creates a new [ConnectToSourceOracleSyncTaskInputResponse].
  /// [sourceConnectionInfo] Information for connecting to Oracle source
  ConnectToSourceOracleSyncTaskInputResponse({
    required this.sourceConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
    };
  }

  factory ConnectToSourceOracleSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceOracleSyncTaskInputResponse(
      sourceConnectionInfo: OracleConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


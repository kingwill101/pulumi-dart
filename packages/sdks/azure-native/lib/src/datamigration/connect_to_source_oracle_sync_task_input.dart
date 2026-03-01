// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_connection_info.dart';

/// Input for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskInput {
  /// Information for connecting to Oracle source
  final OracleConnectionInfo sourceConnectionInfo;

  /// Creates a new [ConnectToSourceOracleSyncTaskInput].
  /// [sourceConnectionInfo] Information for connecting to Oracle source
  ConnectToSourceOracleSyncTaskInput({
    required this.sourceConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
    };
  }

  factory ConnectToSourceOracleSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceOracleSyncTaskInput(
      sourceConnectionInfo: OracleConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


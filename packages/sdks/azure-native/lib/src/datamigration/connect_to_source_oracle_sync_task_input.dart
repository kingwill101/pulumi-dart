// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_connection_info.dart';

/// Input for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskInput {
  /// Information for connecting to Oracle source
  final pulumi.Input<OracleConnectionInfo> sourceConnectionInfo;

  /// Creates a new [ConnectToSourceOracleSyncTaskInput].
  /// [sourceConnectionInfo] Information for connecting to Oracle source
  const ConnectToSourceOracleSyncTaskInput({
    required this.sourceConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': pulumi.Input.mapInputValue<OracleConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToSourceOracleSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceOracleSyncTaskInput(
      sourceConnectionInfo: pulumi.Input.fromValue(OracleConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

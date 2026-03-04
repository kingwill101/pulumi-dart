// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_connection_info_response.dart';

/// Input for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskInputResponse {
  /// Information for connecting to Oracle source
  final pulumi.Input<OracleConnectionInfoResponse> sourceConnectionInfo;

  /// Creates a new [ConnectToSourceOracleSyncTaskInputResponse].
  /// [sourceConnectionInfo] Information for connecting to Oracle source
  ConnectToSourceOracleSyncTaskInputResponse({
    required this.sourceConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<
            OracleConnectionInfoResponse,
            Map<String, dynamic>
          >(sourceConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToSourceOracleSyncTaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToSourceOracleSyncTaskInputResponse(
      sourceConnectionInfo: pulumi.Input.fromValue(
        OracleConnectionInfoResponse.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

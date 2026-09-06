// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskInputResponse {
  /// Flag for whether or not the migration is offline
  final pulumi.Input<bool?>? isOfflineMigration;
  /// Connection information for source MySQL server
  final pulumi.Input<MySqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL server
  final pulumi.Input<MySqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskInputResponse].
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Connection information for source MySQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL server
  ConnectToTargetAzureDbForMySqlTaskInputResponse({
    pulumi.Input<bool?>? isOfflineMigration,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  }) : isOfflineMigration = isOfflineMigration ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskInputResponse(
      isOfflineMigration: (() { final guardedValue = map['isOfflineMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

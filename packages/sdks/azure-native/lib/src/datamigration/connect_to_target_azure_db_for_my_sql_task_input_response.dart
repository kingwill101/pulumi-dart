// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskInputResponse {
  /// Flag for whether or not the migration is offline
  final pulumi.Input<bool>? isOfflineMigration;
  /// Connection information for source MySQL server
  final pulumi.Input<MySqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL server
  final pulumi.Input<MySqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskInputResponse].
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Connection information for source MySQL server
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL server
  ConnectToTargetAzureDbForMySqlTaskInputResponse({
    this.isOfflineMigration,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskInputResponse(
      isOfflineMigration: map['isOfflineMigration'] == null ? null : (map['isOfflineMigration'] as bool).input(),
      sourceConnectionInfo: (MySqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (MySqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


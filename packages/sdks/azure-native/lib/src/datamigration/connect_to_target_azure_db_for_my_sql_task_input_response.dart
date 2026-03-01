// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskInputResponse {
  /// Flag for whether or not the migration is offline
  final bool? isOfflineMigration;
  /// Connection information for source MySQL server
  final MySqlConnectionInfoResponse sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL server
  final MySqlConnectionInfoResponse targetConnectionInfo;

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
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskInputResponse(
      isOfflineMigration: map['isOfflineMigration'] == null ? null : map['isOfflineMigration'] as bool,
      sourceConnectionInfo: MySqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: MySqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


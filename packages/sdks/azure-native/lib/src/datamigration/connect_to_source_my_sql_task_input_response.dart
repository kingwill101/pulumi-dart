// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_connection_info_response.dart';

/// Input for the task that validates MySQL database connection
class ConnectToSourceMySqlTaskInputResponse {
  /// Permission group for validations
  final String? checkPermissionsGroup;
  /// Flag for whether or not the migration is offline
  final bool? isOfflineMigration;
  /// Information for connecting to MySQL source
  final MySqlConnectionInfoResponse sourceConnectionInfo;
  /// Target Platform for the migration
  final String? targetPlatform;

  /// Creates a new [ConnectToSourceMySqlTaskInputResponse].
  /// [checkPermissionsGroup] Permission group for validations
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Information for connecting to MySQL source
  /// [targetPlatform] Target Platform for the migration
  ConnectToSourceMySqlTaskInputResponse({
    this.checkPermissionsGroup,
    this.isOfflineMigration,
    required this.sourceConnectionInfo,
    this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPermissionsGroup': ?checkPermissionsGroup,
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetPlatform': ?targetPlatform,
    };
  }

  factory ConnectToSourceMySqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceMySqlTaskInputResponse(
      checkPermissionsGroup: map['checkPermissionsGroup'] == null ? null : map['checkPermissionsGroup'] as String,
      isOfflineMigration: map['isOfflineMigration'] == null ? null : map['isOfflineMigration'] as bool,
      sourceConnectionInfo: MySqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetPlatform: map['targetPlatform'] == null ? null : map['targetPlatform'] as String,
    );
  }
}


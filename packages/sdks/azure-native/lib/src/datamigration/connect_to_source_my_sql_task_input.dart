// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_connection_info.dart';

/// Input for the task that validates MySQL database connection
class ConnectToSourceMySqlTaskInput {
  /// Permission group for validations
  final pulumi.Input<String>? checkPermissionsGroup;
  /// Flag for whether or not the migration is offline
  final pulumi.Input<bool>? isOfflineMigration;
  /// Information for connecting to MySQL source
  final pulumi.Input<MySqlConnectionInfo> sourceConnectionInfo;
  /// Target Platform for the migration
  final pulumi.Input<String>? targetPlatform;

  /// Creates a new [ConnectToSourceMySqlTaskInput].
  /// [checkPermissionsGroup] Permission group for validations
  /// [isOfflineMigration] Flag for whether or not the migration is offline
  /// [sourceConnectionInfo] Information for connecting to MySQL source
  /// [targetPlatform] Target Platform for the migration
  ConnectToSourceMySqlTaskInput({
    this.checkPermissionsGroup,
    this.isOfflineMigration,
    required this.sourceConnectionInfo,
    this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPermissionsGroup': ?checkPermissionsGroup,
      'isOfflineMigration': ?isOfflineMigration,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetPlatform': ?targetPlatform,
    };
  }

  factory ConnectToSourceMySqlTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceMySqlTaskInput(
      checkPermissionsGroup: map['checkPermissionsGroup'] == null ? null : (map['checkPermissionsGroup']! as String).input(),
      isOfflineMigration: map['isOfflineMigration'] == null ? null : (map['isOfflineMigration']! as bool).input(),
      sourceConnectionInfo: (MySqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetPlatform: map['targetPlatform'] == null ? null : (map['targetPlatform']! as String).input(),
    );
  }
}


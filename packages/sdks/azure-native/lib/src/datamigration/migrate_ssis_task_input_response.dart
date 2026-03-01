// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info_response.dart';
import 'ssis_migration_info_response.dart';

/// Input for task that migrates SSIS packages from SQL Server to Azure SQL Database Managed Instance.
class MigrateSsisTaskInputResponse {
  /// Information for connecting to source
  final SqlConnectionInfoResponse sourceConnectionInfo;
  /// SSIS package migration information.
  final SsisMigrationInfoResponse ssisMigrationInfo;
  /// Information for connecting to target
  final SqlConnectionInfoResponse targetConnectionInfo;

  /// Creates a new [MigrateSsisTaskInputResponse].
  /// [sourceConnectionInfo] Information for connecting to source
  /// [ssisMigrationInfo] SSIS package migration information.
  /// [targetConnectionInfo] Information for connecting to target
  MigrateSsisTaskInputResponse({
    required this.sourceConnectionInfo,
    required this.ssisMigrationInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'ssisMigrationInfo': ssisMigrationInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigrateSsisTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskInputResponse(
      sourceConnectionInfo: SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      ssisMigrationInfo: SsisMigrationInfoResponse.fromMap((map['ssisMigrationInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


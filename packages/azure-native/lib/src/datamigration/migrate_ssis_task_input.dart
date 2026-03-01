// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info.dart';
import 'ssis_migration_info.dart';

/// Input for task that migrates SSIS packages from SQL Server to Azure SQL Database Managed Instance.
class MigrateSsisTaskInput {
  /// Information for connecting to source
  final SqlConnectionInfo sourceConnectionInfo;
  /// SSIS package migration information.
  final SsisMigrationInfo ssisMigrationInfo;
  /// Information for connecting to target
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [MigrateSsisTaskInput].
  /// [sourceConnectionInfo] Information for connecting to source
  /// [ssisMigrationInfo] SSIS package migration information.
  /// [targetConnectionInfo] Information for connecting to target
  MigrateSsisTaskInput({
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

  factory MigrateSsisTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskInput(
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      ssisMigrationInfo: SsisMigrationInfo.fromMap((map['ssisMigrationInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


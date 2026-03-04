// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info_response.dart';
import 'ssis_migration_info_response.dart';

/// Input for task that migrates SSIS packages from SQL Server to Azure SQL Database Managed Instance.
class MigrateSsisTaskInputResponse {
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;

  /// SSIS package migration information.
  final pulumi.Input<SsisMigrationInfoResponse> ssisMigrationInfo;

  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

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
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<
            SqlConnectionInfoResponse,
            Map<String, dynamic>
          >(sourceConnectionInfo, (value) => value.toMap()),
      'ssisMigrationInfo':
          pulumi.Input.mapInputValue<
            SsisMigrationInfoResponse,
            Map<String, dynamic>
          >(ssisMigrationInfo, (value) => value.toMap()),
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<
            SqlConnectionInfoResponse,
            Map<String, dynamic>
          >(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateSsisTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskInputResponse(
      sourceConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfoResponse.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      ssisMigrationInfo: pulumi.Input.fromValue(
        SsisMigrationInfoResponse.fromMap(
          (map['ssisMigrationInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfoResponse.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

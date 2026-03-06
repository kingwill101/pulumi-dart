// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Validation Database level summary result
class MigrationValidationDatabaseSummaryResultResponse {
  /// Validation end time
  final pulumi.Input<String> endedOn;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Migration Identifier
  final pulumi.Input<String> migrationId;
  /// Name of the source database
  final pulumi.Input<String> sourceDatabaseName;
  /// Validation start time
  final pulumi.Input<String> startedOn;
  /// Current status of validation at the database level
  final pulumi.Input<String> status;
  /// Name of the target database
  final pulumi.Input<String> targetDatabaseName;

  /// Creates a new [MigrationValidationDatabaseSummaryResultResponse].
  /// [endedOn] Validation end time
  /// [id] Result identifier
  /// [migrationId] Migration Identifier
  /// [sourceDatabaseName] Name of the source database
  /// [startedOn] Validation start time
  /// [status] Current status of validation at the database level
  /// [targetDatabaseName] Name of the target database
  const MigrationValidationDatabaseSummaryResultResponse({
    required this.endedOn,
    required this.id,
    required this.migrationId,
    required this.sourceDatabaseName,
    required this.startedOn,
    required this.status,
    required this.targetDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'id': id,
      'migrationId': migrationId,
      'sourceDatabaseName': sourceDatabaseName,
      'startedOn': startedOn,
      'status': status,
      'targetDatabaseName': targetDatabaseName,
    };
  }

  factory MigrationValidationDatabaseSummaryResultResponse.fromMap(Map<String, dynamic> map) {
    return MigrationValidationDatabaseSummaryResultResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      migrationId: pulumi.Input.fromValue(map['migrationId'] as String),
      sourceDatabaseName: pulumi.Input.fromValue(map['sourceDatabaseName'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      targetDatabaseName: pulumi.Input.fromValue(map['targetDatabaseName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Migration Validation Database level summary result
class MigrationValidationDatabaseSummaryResultResponse {
  /// Validation end time
  final String endedOn;
  /// Result identifier
  final String id;
  /// Migration Identifier
  final String migrationId;
  /// Name of the source database
  final String sourceDatabaseName;
  /// Validation start time
  final String startedOn;
  /// Current status of validation at the database level
  final String status;
  /// Name of the target database
  final String targetDatabaseName;

  /// Creates a new [MigrationValidationDatabaseSummaryResultResponse].
  /// [endedOn] Validation end time
  /// [id] Result identifier
  /// [migrationId] Migration Identifier
  /// [sourceDatabaseName] Name of the source database
  /// [startedOn] Validation start time
  /// [status] Current status of validation at the database level
  /// [targetDatabaseName] Name of the target database
  MigrationValidationDatabaseSummaryResultResponse({
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
      endedOn: map['endedOn'] as String,
      id: map['id'] as String,
      migrationId: map['migrationId'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] as String,
      startedOn: map['startedOn'] as String,
      status: map['status'] as String,
      targetDatabaseName: map['targetDatabaseName'] as String,
    );
  }
}


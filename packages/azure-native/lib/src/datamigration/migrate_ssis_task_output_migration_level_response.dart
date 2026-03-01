// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSsisTaskOutputMigrationLevelResponse {
  /// Migration end time
  final String endedOn;
  /// Migration exceptions and warnings.
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Migration progress message
  final String message;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Source server brand version
  final String sourceServerBrandVersion;
  /// Source server version
  final String sourceServerVersion;
  /// Stage of SSIS migration.
  final String stage;
  /// Migration start time
  final String startedOn;
  /// Current status of migration
  final String status;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigrateSsisTaskOutputMigrationLevelResponse].
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [id] Result identifier
  /// [message] Migration progress message
  /// [resultType] Result type
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Source server version
  /// [stage] Stage of SSIS migration.
  /// [startedOn] Migration start time
  /// [status] Current status of migration
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  MigrateSsisTaskOutputMigrationLevelResponse({
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.message,
    required this.resultType,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.stage,
    required this.startedOn,
    required this.status,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'message': message,
      'resultType': resultType,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'stage': stage,
      'startedOn': startedOn,
      'status': status,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateSsisTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskOutputMigrationLevelResponse(
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      message: map['message'] as String,
      resultType: map['resultType'] as String,
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      stage: map['stage'] as String,
      startedOn: map['startedOn'] as String,
      status: map['status'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}


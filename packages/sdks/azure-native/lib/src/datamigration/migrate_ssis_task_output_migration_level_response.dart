// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSsisTaskOutputMigrationLevelResponse {
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Migration exceptions and warnings.
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Migration progress message
  final pulumi.Input<String> message;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;
  /// Source server version
  final pulumi.Input<String> sourceServerVersion;
  /// Stage of SSIS migration.
  final pulumi.Input<String> stage;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current status of migration
  final pulumi.Input<String> status;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;

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
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      endedOn: (map['endedOn'] as String).input(),
      exceptionsAndWarnings: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      message: (map['message'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      sourceServerBrandVersion: (map['sourceServerBrandVersion'] as String).input(),
      sourceServerVersion: (map['sourceServerVersion'] as String).input(),
      stage: (map['stage'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
      status: (map['status'] as String).input(),
      targetServerBrandVersion: (map['targetServerBrandVersion'] as String).input(),
      targetServerVersion: (map['targetServerVersion'] as String).input(),
    );
  }
}


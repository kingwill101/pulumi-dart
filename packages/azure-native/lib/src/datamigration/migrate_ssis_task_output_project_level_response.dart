// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSsisTaskOutputProjectLevelResponse {
  /// Migration end time
  final String endedOn;
  /// Migration exceptions and warnings
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Name of the folder
  final String folderName;
  /// Result identifier
  final String id;
  /// Migration progress message
  final String message;
  /// Name of the project
  final String projectName;
  /// Result type
  /// Expected value is 'SsisProjectLevelOutput'.
  final String resultType;
  /// Stage of SSIS migration.
  final String stage;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;

  /// Creates a new [MigrateSsisTaskOutputProjectLevelResponse].
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration exceptions and warnings
  /// [folderName] Name of the folder
  /// [id] Result identifier
  /// [message] Migration progress message
  /// [projectName] Name of the project
  /// [resultType] Result type
  /// [stage] Stage of SSIS migration.
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  MigrateSsisTaskOutputProjectLevelResponse({
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.folderName,
    required this.id,
    required this.message,
    required this.projectName,
    required this.resultType,
    required this.stage,
    required this.startedOn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'folderName': folderName,
      'id': id,
      'message': message,
      'projectName': projectName,
      'resultType': resultType,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSsisTaskOutputProjectLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskOutputProjectLevelResponse(
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      folderName: map['folderName'] as String,
      id: map['id'] as String,
      message: map['message'] as String,
      projectName: map['projectName'] as String,
      resultType: map['resultType'] as String,
      stage: map['stage'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
    );
  }
}


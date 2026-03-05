// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSsisTaskOutputProjectLevelResponse {
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Migration exceptions and warnings
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Name of the folder
  final pulumi.Input<String> folderName;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Migration progress message
  final pulumi.Input<String> message;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Result type
  /// Expected value is 'SsisProjectLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Stage of SSIS migration.
  final pulumi.Input<String> stage;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;

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
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      folderName: pulumi.Input.fromValue(map['folderName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}


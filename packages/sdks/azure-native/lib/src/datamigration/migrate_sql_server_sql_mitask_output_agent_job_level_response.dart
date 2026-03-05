// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse {
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Migration errors and warnings per job
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Result identifier
  final pulumi.Input<String> id;
  /// The state of the original Agent Job.
  final pulumi.Input<bool> isEnabled;
  /// Migration progress message
  final pulumi.Input<String> message;
  /// Agent Job name.
  final pulumi.Input<String> name;
  /// Result type
  /// Expected value is 'AgentJobLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse].
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration errors and warnings per job
  /// [id] Result identifier
  /// [isEnabled] The state of the original Agent Job.
  /// [message] Migration progress message
  /// [name] Agent Job name.
  /// [resultType] Result type
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse({
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.isEnabled,
    required this.message,
    required this.name,
    required this.resultType,
    required this.startedOn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'isEnabled': isEnabled,
      'message': message,
      'name': name,
      'resultType': resultType,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}


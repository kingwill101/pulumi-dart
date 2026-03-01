// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse {
  /// Migration end time
  final String endedOn;
  /// Migration errors and warnings per job
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// The state of the original Agent Job.
  final bool isEnabled;
  /// Migration progress message
  final String message;
  /// Agent Job name.
  final String name;
  /// Result type
  /// Expected value is 'AgentJobLevelOutput'.
  final String resultType;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;

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
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
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
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isEnabled: map['isEnabled'] as bool,
      message: map['message'] as String,
      name: map['name'] as String,
      resultType: map['resultType'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
    );
  }
}


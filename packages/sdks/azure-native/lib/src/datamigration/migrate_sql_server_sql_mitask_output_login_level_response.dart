// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputLoginLevelResponse {
  /// Login migration end time
  final pulumi.Input<String> endedOn;

  /// Login migration errors and warnings per login
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Login name.
  final pulumi.Input<String> loginName;

  /// Login migration progress message
  final pulumi.Input<String> message;

  /// Result type
  /// Expected value is 'LoginLevelOutput'.
  final pulumi.Input<String> resultType;

  /// Current stage of login
  final pulumi.Input<String> stage;

  /// Login migration start time
  final pulumi.Input<String> startedOn;

  /// Current state of login
  final pulumi.Input<String> state;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputLoginLevelResponse].
  /// [endedOn] Login migration end time
  /// [exceptionsAndWarnings] Login migration errors and warnings per login
  /// [id] Result identifier
  /// [loginName] Login name.
  /// [message] Login migration progress message
  /// [resultType] Result type
  /// [stage] Current stage of login
  /// [startedOn] Login migration start time
  /// [state] Current state of login
  MigrateSqlServerSqlMITaskOutputLoginLevelResponse({
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.loginName,
    required this.message,
    required this.resultType,
    required this.stage,
    required this.startedOn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'exceptionsAndWarnings':
          pulumi.Input.mapInputValue<
            List<ReportableExceptionResponse>,
            List<Map<String, dynamic>>
          >(
            exceptionsAndWarnings,
            (value) =>
                pulumi.Input.encodeList<
                  ReportableExceptionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'loginName': loginName,
      'message': message,
      'resultType': resultType,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputLoginLevelResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlMITaskOutputLoginLevelResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ReportableExceptionResponse>(
          map['exceptionsAndWarnings']!,
          (value) => ReportableExceptionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      loginName: pulumi.Input.fromValue(map['loginName'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

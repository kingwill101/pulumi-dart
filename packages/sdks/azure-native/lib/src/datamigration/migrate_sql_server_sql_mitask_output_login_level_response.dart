// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputLoginLevelResponse {
  /// Login migration end time
  final String endedOn;
  /// Login migration errors and warnings per login
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Login name.
  final String loginName;
  /// Login migration progress message
  final String message;
  /// Result type
  /// Expected value is 'LoginLevelOutput'.
  final String resultType;
  /// Current stage of login
  final String stage;
  /// Login migration start time
  final String startedOn;
  /// Current state of login
  final String state;

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
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'loginName': loginName,
      'message': message,
      'resultType': resultType,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputLoginLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputLoginLevelResponse(
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loginName: map['loginName'] as String,
      message: map['message'] as String,
      resultType: map['resultType'] as String,
      stage: map['stage'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
    );
  }
}


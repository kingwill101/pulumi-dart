// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse {
  /// Name of the database
  final pulumi.Input<String> databaseName;

  /// Migration end time
  final pulumi.Input<String> endedOn;

  /// Migration exceptions and warnings
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Migration progress message
  final pulumi.Input<String> message;

  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final pulumi.Input<String> resultType;

  /// Size of the database in megabytes
  final pulumi.Input<double> sizeMB;

  /// Current stage of migration
  final pulumi.Input<String> stage;

  /// Migration start time
  final pulumi.Input<String> startedOn;

  /// Current state of migration
  final pulumi.Input<String> state;

  /// Creates a new [MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse].
  /// [databaseName] Name of the database
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration exceptions and warnings
  /// [id] Result identifier
  /// [message] Migration progress message
  /// [resultType] Result type
  /// [sizeMB] Size of the database in megabytes
  /// [stage] Current stage of migration
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse({
    required this.databaseName,
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.message,
    required this.resultType,
    required this.sizeMB,
    required this.stage,
    required this.startedOn,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
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
      'message': message,
      'resultType': resultType,
      'sizeMB': sizeMB,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
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
      message: pulumi.Input.fromValue(map['message'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      sizeMB: pulumi.Input.fromValue(map['sizeMB'] as double),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

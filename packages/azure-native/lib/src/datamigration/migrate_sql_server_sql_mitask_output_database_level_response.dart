// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse {
  /// Name of the database
  final String databaseName;
  /// Migration end time
  final String endedOn;
  /// Migration exceptions and warnings
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Migration progress message
  final String message;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final String resultType;
  /// Size of the database in megabytes
  final double sizeMB;
  /// Current stage of migration
  final String stage;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;

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
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'message': message,
      'resultType': resultType,
      'sizeMB': sizeMB,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
    };
  }

  factory MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskOutputDatabaseLevelResponse(
      databaseName: map['databaseName'] as String,
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      message: map['message'] as String,
      resultType: map['resultType'] as String,
      sizeMB: map['sizeMB'] as double,
      stage: map['stage'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
    );
  }
}


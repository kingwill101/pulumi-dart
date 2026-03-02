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
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      databaseName: (map['databaseName'] as String).input(),
      endedOn: (map['endedOn'] as String).input(),
      exceptionsAndWarnings: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      message: (map['message'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      sizeMB: (map['sizeMB'] as double).input(),
      stage: (map['stage'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}


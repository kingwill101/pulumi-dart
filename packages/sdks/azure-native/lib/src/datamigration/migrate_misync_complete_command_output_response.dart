// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for command that completes online migration for an Azure SQL Database Managed Instance.
class MigrateMISyncCompleteCommandOutputResponse {
  /// List of errors that happened during the command execution
  final pulumi.Input<List<ReportableExceptionResponse>?>? errors;

  /// Creates a new [MigrateMISyncCompleteCommandOutputResponse].
  /// [errors] List of errors that happened during the command execution
  const MigrateMISyncCompleteCommandOutputResponse({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MigrateMISyncCompleteCommandOutputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMISyncCompleteCommandOutputResponse(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(guardedValue, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for command that completes online migration for an Azure SQL Database Managed Instance.
class MigrateMISyncCompleteCommandOutputResponse {
  /// List of errors that happened during the command execution
  final List<ReportableExceptionResponse>? errors;

  /// Creates a new [MigrateMISyncCompleteCommandOutputResponse].
  /// [errors] List of errors that happened during the command execution
  MigrateMISyncCompleteCommandOutputResponse({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
    };
  }

  factory MigrateMISyncCompleteCommandOutputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMISyncCompleteCommandOutputResponse(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ReportableExceptionResponse>(map['errors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


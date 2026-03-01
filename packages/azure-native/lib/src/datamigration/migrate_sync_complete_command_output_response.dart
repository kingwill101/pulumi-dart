// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for command that completes sync migration for a database.
class MigrateSyncCompleteCommandOutputResponse {
  /// List of errors that happened during the command execution
  final List<ReportableExceptionResponse> errors;
  /// Result identifier
  final String id;

  /// Creates a new [MigrateSyncCompleteCommandOutputResponse].
  /// [errors] List of errors that happened during the command execution
  /// [id] Result identifier
  MigrateSyncCompleteCommandOutputResponse({
    required this.errors,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'id': id,
    };
  }

  factory MigrateSyncCompleteCommandOutputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSyncCompleteCommandOutputResponse(
      errors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['errors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}


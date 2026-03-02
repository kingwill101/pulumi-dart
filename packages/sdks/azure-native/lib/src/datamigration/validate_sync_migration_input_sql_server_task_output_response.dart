// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for task that validates migration input for SQL sync migrations
class ValidateSyncMigrationInputSqlServerTaskOutputResponse {
  /// Database identifier
  final pulumi.Input<String> id;
  /// Name of database
  final pulumi.Input<String> name;
  /// Errors associated with a selected database object
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ValidateSyncMigrationInputSqlServerTaskOutputResponse].
  /// [id] Database identifier
  /// [name] Name of database
  /// [validationErrors] Errors associated with a selected database object
  ValidateSyncMigrationInputSqlServerTaskOutputResponse({
    required this.id,
    required this.name,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidateSyncMigrationInputSqlServerTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateSyncMigrationInputSqlServerTaskOutputResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      validationErrors: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure SQL Database Managed Instance.
class ConnectToTargetSqlMISyncTaskOutputResponse {
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToTargetSqlMISyncTaskOutputResponse].
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  /// [validationErrors] Validation errors
  const ConnectToTargetSqlMISyncTaskOutputResponse({
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToTargetSqlMISyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskOutputResponse(
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


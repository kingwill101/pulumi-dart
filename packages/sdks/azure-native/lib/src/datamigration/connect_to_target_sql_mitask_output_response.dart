// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure SQL Database Managed Instance.
class ConnectToTargetSqlMITaskOutputResponse {
  /// List of agent jobs on the target server.
  final pulumi.Input<List<String>> agentJobs;
  /// Result identifier
  final pulumi.Input<String> id;
  /// List of logins on the target server.
  final pulumi.Input<List<String>> logins;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToTargetSqlMITaskOutputResponse].
  /// [agentJobs] List of agent jobs on the target server.
  /// [id] Result identifier
  /// [logins] List of logins on the target server.
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  /// [validationErrors] Validation errors
  const ConnectToTargetSqlMITaskOutputResponse({
    required this.agentJobs,
    required this.id,
    required this.logins,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentJobs': agentJobs,
      'id': id,
      'logins': logins,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToTargetSqlMITaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMITaskOutputResponse(
      agentJobs: pulumi.Input.fromValue((map['agentJobs'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      logins: pulumi.Input.fromValue((map['logins'] as List).cast<String>()),
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


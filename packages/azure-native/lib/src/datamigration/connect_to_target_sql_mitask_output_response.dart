// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure SQL Database Managed Instance.
class ConnectToTargetSqlMITaskOutputResponse {
  /// List of agent jobs on the target server.
  final List<String> agentJobs;
  /// Result identifier
  final String id;
  /// List of logins on the target server.
  final List<String> logins;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Target server version
  final String targetServerVersion;
  /// Validation errors
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [ConnectToTargetSqlMITaskOutputResponse].
  /// [agentJobs] List of agent jobs on the target server.
  /// [id] Result identifier
  /// [logins] List of logins on the target server.
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  /// [validationErrors] Validation errors
  ConnectToTargetSqlMITaskOutputResponse({
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
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetSqlMITaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMITaskOutputResponse(
      agentJobs: (map['agentJobs'] as List).cast<String>(),
      id: map['id'] as String,
      logins: (map['logins'] as List).cast<String>(),
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


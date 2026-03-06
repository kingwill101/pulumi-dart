// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse {
  /// List of databases on target server
  final pulumi.Input<List<String>> databases;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Version of the target server
  final pulumi.Input<String> targetServerVersion;
  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse].
  /// [databases] List of databases on target server
  /// [id] Result identifier
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Version of the target server
  /// [validationErrors] Validation errors associated with the task
  const ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse({
    required this.databases,
    required this.id,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse(
      databases: pulumi.Input.fromValue((map['databases'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


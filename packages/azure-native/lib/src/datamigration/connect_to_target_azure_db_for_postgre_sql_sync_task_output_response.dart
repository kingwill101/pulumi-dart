// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for PostgreSQL and target server requirements
class ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse {
  /// List of databases on target server
  final List<String> databases;
  /// Result identifier
  final String id;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Version of the target server
  final String targetServerVersion;
  /// Validation errors associated with the task
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse].
  /// [databases] List of databases on target server
  /// [id] Result identifier
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Version of the target server
  /// [validationErrors] Validation errors associated with the task
  ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse({
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
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse(
      databases: (map['databases'] as List).cast<String>(),
      id: map['id'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


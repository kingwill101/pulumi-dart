// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskOutputResponse {
  /// List of databases on target server
  final List<String> databases;
  /// Result identifier
  final String id;
  /// Version of the target server
  final String serverVersion;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Validation errors associated with the task
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskOutputResponse].
  /// [databases] List of databases on target server
  /// [id] Result identifier
  /// [serverVersion] Version of the target server
  /// [targetServerBrandVersion] Target server brand version
  /// [validationErrors] Validation errors associated with the task
  ConnectToTargetAzureDbForMySqlTaskOutputResponse({
    required this.databases,
    required this.id,
    required this.serverVersion,
    required this.targetServerBrandVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'serverVersion': serverVersion,
      'targetServerBrandVersion': targetServerBrandVersion,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskOutputResponse(
      databases: (map['databases'] as List).cast<String>(),
      id: map['id'] as String,
      serverVersion: map['serverVersion'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


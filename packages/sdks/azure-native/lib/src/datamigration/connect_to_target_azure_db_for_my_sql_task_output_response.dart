// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskOutputResponse {
  /// List of databases on target server
  final pulumi.Input<List<String>> databases;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Version of the target server
  final pulumi.Input<String> serverVersion;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

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
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskOutputResponse(
      databases: pulumi.Input.fromValue((map['databases'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      serverVersion: pulumi.Input.fromValue(map['serverVersion'] as String),
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


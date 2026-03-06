// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskOutputResponse {
  /// List of schemas on source server
  final pulumi.Input<List<String>> databases;
  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;
  /// Version of the source server
  final pulumi.Input<String> sourceServerVersion;
  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToSourceOracleSyncTaskOutputResponse].
  /// [databases] List of schemas on source server
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Version of the source server
  /// [validationErrors] Validation errors associated with the task
  const ConnectToSourceOracleSyncTaskOutputResponse({
    required this.databases,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectToSourceOracleSyncTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceOracleSyncTaskOutputResponse(
      databases: pulumi.Input.fromValue((map['databases'] as List).cast<String>()),
      sourceServerBrandVersion: pulumi.Input.fromValue(map['sourceServerBrandVersion'] as String),
      sourceServerVersion: pulumi.Input.fromValue(map['sourceServerVersion'] as String),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


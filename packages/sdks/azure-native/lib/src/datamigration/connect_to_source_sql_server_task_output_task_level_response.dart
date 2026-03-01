// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Task level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputTaskLevelResponse {
  /// Source agent jobs as a map from agent job name to id.
  final Map<String, String> agentJobs;
  /// Mapping from database name to TDE certificate name, if applicable
  final Map<String, String> databaseTdeCertificateMapping;
  /// Source databases as a map from database name to database id
  final Map<String, String> databases;
  /// Result identifier
  final String id;
  /// Source logins as a map from login name to login id.
  final Map<String, String> logins;
  /// Type of result - database level or task level
  /// Expected value is 'TaskLevelOutput'.
  final String resultType;
  /// Source server brand version
  final String sourceServerBrandVersion;
  /// Source server version
  final String sourceServerVersion;
  /// Validation errors
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [ConnectToSourceSqlServerTaskOutputTaskLevelResponse].
  /// [agentJobs] Source agent jobs as a map from agent job name to id.
  /// [databaseTdeCertificateMapping] Mapping from database name to TDE certificate name, if applicable
  /// [databases] Source databases as a map from database name to database id
  /// [id] Result identifier
  /// [logins] Source logins as a map from login name to login id.
  /// [resultType] Type of result - database level or task level
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Source server version
  /// [validationErrors] Validation errors
  ConnectToSourceSqlServerTaskOutputTaskLevelResponse({
    required this.agentJobs,
    required this.databaseTdeCertificateMapping,
    required this.databases,
    required this.id,
    required this.logins,
    required this.resultType,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentJobs': agentJobs,
      'databaseTdeCertificateMapping': databaseTdeCertificateMapping,
      'databases': databases,
      'id': id,
      'logins': logins,
      'resultType': resultType,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToSourceSqlServerTaskOutputTaskLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputTaskLevelResponse(
      agentJobs: (map['agentJobs'] as Map).cast<String, String>(),
      databaseTdeCertificateMapping: (map['databaseTdeCertificateMapping'] as Map).cast<String, String>(),
      databases: (map['databases'] as Map).cast<String, String>(),
      id: map['id'] as String,
      logins: (map['logins'] as Map).cast<String, String>(),
      resultType: map['resultType'] as String,
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


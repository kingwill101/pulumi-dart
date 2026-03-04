// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for the task that validates connection to PostgreSQL and source server requirements
class ConnectToSourcePostgreSqlSyncTaskOutputResponse {
  /// List of databases on source server
  final pulumi.Input<List<String>> databases;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;

  /// Version of the source server
  final pulumi.Input<String> sourceServerVersion;

  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ConnectToSourcePostgreSqlSyncTaskOutputResponse].
  /// [databases] List of databases on source server
  /// [id] Result identifier
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Version of the source server
  /// [validationErrors] Validation errors associated with the task
  ConnectToSourcePostgreSqlSyncTaskOutputResponse({
    required this.databases,
    required this.id,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'validationErrors':
          pulumi.Input.mapInputValue<
            List<ReportableExceptionResponse>,
            List<Map<String, dynamic>>
          >(
            validationErrors,
            (value) =>
                pulumi.Input.encodeList<
                  ReportableExceptionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ConnectToSourcePostgreSqlSyncTaskOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToSourcePostgreSqlSyncTaskOutputResponse(
      databases: pulumi.Input.fromValue(
        (map['databases'] as List).cast<String>(),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      sourceServerBrandVersion: pulumi.Input.fromValue(
        map['sourceServerBrandVersion'] as String,
      ),
      sourceServerVersion: pulumi.Input.fromValue(
        map['sourceServerVersion'] as String,
      ),
      validationErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ReportableExceptionResponse>(
          map['validationErrors']!,
          (value) => ReportableExceptionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

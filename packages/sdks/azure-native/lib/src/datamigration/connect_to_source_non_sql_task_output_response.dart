// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';
import 'server_properties_response.dart';

/// Output for connect to MySQL type source
class ConnectToSourceNonSqlTaskOutputResponse {
  /// List of databases on the server
  final List<String> databases;
  /// Result identifier
  final String id;
  /// Server properties
  final ServerPropertiesResponse serverProperties;
  /// Server brand version
  final String sourceServerBrandVersion;
  /// Validation errors associated with the task
  final List<ReportableExceptionResponse> validationErrors;

  /// Creates a new [ConnectToSourceNonSqlTaskOutputResponse].
  /// [databases] List of databases on the server
  /// [id] Result identifier
  /// [serverProperties] Server properties
  /// [sourceServerBrandVersion] Server brand version
  /// [validationErrors] Validation errors associated with the task
  ConnectToSourceNonSqlTaskOutputResponse({
    required this.databases,
    required this.id,
    required this.serverProperties,
    required this.sourceServerBrandVersion,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'serverProperties': serverProperties.toMap(),
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'validationErrors': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory ConnectToSourceNonSqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceNonSqlTaskOutputResponse(
      databases: (map['databases'] as List).cast<String>(),
      id: map['id'] as String,
      serverProperties: ServerPropertiesResponse.fromMap((map['serverProperties'] as Map).cast<String, dynamic>()),
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      validationErrors: pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


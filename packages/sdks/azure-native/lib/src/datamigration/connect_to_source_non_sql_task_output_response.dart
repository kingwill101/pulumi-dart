// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';
import 'server_properties_response.dart';

/// Output for connect to MySQL type source
class ConnectToSourceNonSqlTaskOutputResponse {
  /// List of databases on the server
  final pulumi.Input<List<String>> databases;

  /// Result identifier
  final pulumi.Input<String> id;

  /// Server properties
  final pulumi.Input<ServerPropertiesResponse> serverProperties;

  /// Server brand version
  final pulumi.Input<String> sourceServerBrandVersion;

  /// Validation errors associated with the task
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

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
      'serverProperties':
          pulumi.Input.mapInputValue<
            ServerPropertiesResponse,
            Map<String, dynamic>
          >(serverProperties, (value) => value.toMap()),
      'sourceServerBrandVersion': sourceServerBrandVersion,
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

  factory ConnectToSourceNonSqlTaskOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToSourceNonSqlTaskOutputResponse(
      databases: pulumi.Input.fromValue(
        (map['databases'] as List).cast<String>(),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      serverProperties: pulumi.Input.fromValue(
        ServerPropertiesResponse.fromMap(
          (map['serverProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
      sourceServerBrandVersion: pulumi.Input.fromValue(
        map['sourceServerBrandVersion'] as String,
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

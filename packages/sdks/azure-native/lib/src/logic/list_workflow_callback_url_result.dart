// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_trigger_list_callback_url_queries_response.dart';

/// Result data returned by listWorkflowCallbackUrl.
class ListWorkflowCallbackUrlResult {
  /// Gets the workflow trigger callback URL base path.
  final String basePath;
  /// Gets the workflow trigger callback URL HTTP method.
  final String method;
  /// Gets the workflow trigger callback URL query parameters.
  final WorkflowTriggerListCallbackUrlQueriesResponse? queries;
  /// Gets the workflow trigger callback URL relative path.
  final String relativePath;
  /// Gets the workflow trigger callback URL relative path parameters.
  final List<String>? relativePathParameters;
  /// Gets the workflow trigger callback URL.
  final String value;

  /// Creates a new [ListWorkflowCallbackUrlResult].
  /// [basePath] Gets the workflow trigger callback URL base path.
  /// [method] Gets the workflow trigger callback URL HTTP method.
  /// [queries] Gets the workflow trigger callback URL query parameters.
  /// [relativePath] Gets the workflow trigger callback URL relative path.
  /// [relativePathParameters] Gets the workflow trigger callback URL relative path parameters.
  /// [value] Gets the workflow trigger callback URL.
  ListWorkflowCallbackUrlResult({
    required this.basePath,
    required this.method,
    this.queries,
    required this.relativePath,
    this.relativePathParameters,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': basePath,
      'method': method,
      'queries': ?queries == null ? null : queries!.toMap(),
      'relativePath': relativePath,
      'relativePathParameters': ?relativePathParameters,
      'value': value,
    };
  }

  factory ListWorkflowCallbackUrlResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowCallbackUrlResult(
      basePath: map['basePath'] as String,
      method: map['method'] as String,
      queries: map['queries'] == null ? null : WorkflowTriggerListCallbackUrlQueriesResponse.fromMap((map['queries']! as Map).cast<String, dynamic>()),
      relativePath: map['relativePath'] as String,
      relativePathParameters: map['relativePathParameters'] == null ? null : (map['relativePathParameters']! as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}


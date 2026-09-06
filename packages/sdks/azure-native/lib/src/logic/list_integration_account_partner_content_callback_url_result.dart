// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_trigger_list_callback_url_queries_response.dart';

/// Result data returned by listIntegrationAccountPartnerContentCallbackUrl.
class ListIntegrationAccountPartnerContentCallbackUrlResult {
  /// Gets the workflow trigger callback URL base path.
  final String? basePath;
  /// Gets the workflow trigger callback URL HTTP method.
  final String? method;
  /// Gets the workflow trigger callback URL query parameters.
  final WorkflowTriggerListCallbackUrlQueriesResponse? queries;
  /// Gets the workflow trigger callback URL relative path.
  final String? relativePath;
  /// Gets the workflow trigger callback URL relative path parameters.
  final List<String>? relativePathParameters;
  /// Gets the workflow trigger callback URL.
  final String? value;

  /// Creates a new [ListIntegrationAccountPartnerContentCallbackUrlResult].
  /// [basePath] Gets the workflow trigger callback URL base path.
  /// [method] Gets the workflow trigger callback URL HTTP method.
  /// [queries] Gets the workflow trigger callback URL query parameters.
  /// [relativePath] Gets the workflow trigger callback URL relative path.
  /// [relativePathParameters] Gets the workflow trigger callback URL relative path parameters.
  /// [value] Gets the workflow trigger callback URL.
  const ListIntegrationAccountPartnerContentCallbackUrlResult({
    this.basePath,
    this.method,
    this.queries,
    this.relativePath,
    this.relativePathParameters,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'method': ?method,
      'queries': ?queries?.toMap(),
      'relativePath': ?relativePath,
      'relativePathParameters': ?relativePathParameters,
      'value': ?value,
    };
  }

  factory ListIntegrationAccountPartnerContentCallbackUrlResult.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountPartnerContentCallbackUrlResult(
      basePath: (() { final guardedValue = map['basePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queries: (() { final guardedValue = map['queries']; if (guardedValue == null) return null; return WorkflowTriggerListCallbackUrlQueriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relativePathParameters: (() { final guardedValue = map['relativePathParameters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

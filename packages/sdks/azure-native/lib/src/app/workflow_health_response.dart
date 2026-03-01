// ignore_for_file: unused_element, unnecessary_cast

import 'error_entity_response.dart';

/// Represents the workflow health.
class WorkflowHealthResponse {
  /// Gets or sets the workflow error.
  final ErrorEntityResponse? error;
  /// Gets or sets the workflow health state.
  final String state;

  /// Creates a new [WorkflowHealthResponse].
  /// [error] Gets or sets the workflow error.
  /// [state] Gets or sets the workflow health state.
  WorkflowHealthResponse({
    this.error,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'state': state,
    };
  }

  factory WorkflowHealthResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowHealthResponse(
      error: map['error'] == null ? null : ErrorEntityResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}


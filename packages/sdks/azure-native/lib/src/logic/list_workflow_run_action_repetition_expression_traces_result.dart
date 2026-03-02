// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_root_response.dart';

/// Result data returned by listWorkflowRunActionRepetitionExpressionTraces.
class ListWorkflowRunActionRepetitionExpressionTracesResult {
  final List<ExpressionRootResponse>? inputs;

  /// Creates a new [ListWorkflowRunActionRepetitionExpressionTracesResult].
  /// [inputs] Optional.
  ListWorkflowRunActionRepetitionExpressionTracesResult({
    this.inputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<ExpressionRootResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
    };
  }

  factory ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionRepetitionExpressionTracesResult(
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<ExpressionRootResponse>(map['inputs']!, (value) => ExpressionRootResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


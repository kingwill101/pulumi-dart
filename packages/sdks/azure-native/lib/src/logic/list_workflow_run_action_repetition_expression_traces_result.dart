// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_root_response.dart';

/// Result data returned by listWorkflowRunActionRepetitionExpressionTraces.
class ListWorkflowRunActionRepetitionExpressionTracesResult {
  final List<ExpressionRootResponse>? inputs;

  /// Creates a new [ListWorkflowRunActionRepetitionExpressionTracesResult].
  /// [inputs] Optional.
  const ListWorkflowRunActionRepetitionExpressionTracesResult({
    this.inputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?(() { final guardedValue = inputs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExpressionRootResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListWorkflowRunActionRepetitionExpressionTracesResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionRepetitionExpressionTracesResult(
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressionRootResponse>(guardedValue, (value) => ExpressionRootResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

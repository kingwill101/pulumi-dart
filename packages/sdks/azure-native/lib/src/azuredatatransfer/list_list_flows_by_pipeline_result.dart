// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_flows_by_pipeline_connection_response.dart';

/// Result data returned by listListFlowsByPipeline.
class ListListFlowsByPipelineResult {
  /// List flows by pipeline result by connection
  final List<ListFlowsByPipelineConnectionResponse>? value;

  /// Creates a new [ListListFlowsByPipelineResult].
  /// [value] List flows by pipeline result by connection
  const ListListFlowsByPipelineResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ListFlowsByPipelineConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListListFlowsByPipelineResult.fromMap(Map<String, dynamic> map) {
    return ListListFlowsByPipelineResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListFlowsByPipelineConnectionResponse>(guardedValue, (value) => ListFlowsByPipelineConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

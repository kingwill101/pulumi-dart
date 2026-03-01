// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_response.dart';

/// A connection resource id in addition to all child flow resources under this connection.
class ListFlowsByPipelineConnectionResponse {
  /// List of flows associated with the connection.
  final List<FlowResponse>? flows;
  /// ID of the connection.
  final String? id;

  /// Creates a new [ListFlowsByPipelineConnectionResponse].
  /// [flows] List of flows associated with the connection.
  /// [id] ID of the connection.
  ListFlowsByPipelineConnectionResponse({
    this.flows,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flows': ?flows == null ? null : pulumi.Input.encodeList<FlowResponse, Map<String, dynamic>>(flows!, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory ListFlowsByPipelineConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ListFlowsByPipelineConnectionResponse(
      flows: map['flows'] == null ? null : pulumi.Input.decodeList<FlowResponse>(map['flows'], (value) => FlowResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_response.dart';

/// A connection resource id in addition to all child flow resources under this connection.
class ListFlowsByPipelineConnectionResponse {
  /// List of flows associated with the connection.
  final pulumi.Input<List<FlowResponse>>? flows;
  /// ID of the connection.
  final pulumi.Input<String>? id;

  /// Creates a new [ListFlowsByPipelineConnectionResponse].
  /// [flows] List of flows associated with the connection.
  /// [id] ID of the connection.
  ListFlowsByPipelineConnectionResponse({
    this.flows,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flows': ?pulumi.Input.mapOptionalInputValue<List<FlowResponse>, List<Map<String, dynamic>>>(flows, (value) => pulumi.Input.encodeList<FlowResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
    };
  }

  factory ListFlowsByPipelineConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ListFlowsByPipelineConnectionResponse(
      flows: (() { final guardedValue = map['flows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlowResponse>(guardedValue, (value) => FlowResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


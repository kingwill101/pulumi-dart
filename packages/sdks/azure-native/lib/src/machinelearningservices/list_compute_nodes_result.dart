// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_compute_node_information_response.dart';

/// Result data returned by listComputeNodes.
class ListComputeNodesResult {
  /// The continuation token.
  final String? nextLink;
  /// The collection of returned AmlCompute nodes details.
  final List<AmlComputeNodeInformationResponse>? nodes;

  /// Creates a new [ListComputeNodesResult].
  /// [nextLink] The continuation token.
  /// [nodes] The collection of returned AmlCompute nodes details.
  const ListComputeNodesResult({
    this.nextLink,
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'nodes': ?(() { final guardedValue = nodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<AmlComputeNodeInformationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListComputeNodesResult.fromMap(Map<String, dynamic> map) {
    return ListComputeNodesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AmlComputeNodeInformationResponse>(guardedValue, (value) => AmlComputeNodeInformationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

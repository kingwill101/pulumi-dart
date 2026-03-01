// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_compute_node_information_response.dart';

/// Result data returned by listComputeNodes.
class ListComputeNodesResult {
  /// The continuation token.
  final String nextLink;
  /// The collection of returned AmlCompute nodes details.
  final List<AmlComputeNodeInformationResponse> nodes;

  /// Creates a new [ListComputeNodesResult].
  /// [nextLink] The continuation token.
  /// [nodes] The collection of returned AmlCompute nodes details.
  ListComputeNodesResult({
    required this.nextLink,
    required this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'nodes': pulumi.Input.encodeList<AmlComputeNodeInformationResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
    };
  }

  factory ListComputeNodesResult.fromMap(Map<String, dynamic> map) {
    return ListComputeNodesResult(
      nextLink: map['nextLink'] as String,
      nodes: pulumi.Input.decodeList<AmlComputeNodeInformationResponse>(map['nodes'], (value) => AmlComputeNodeInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


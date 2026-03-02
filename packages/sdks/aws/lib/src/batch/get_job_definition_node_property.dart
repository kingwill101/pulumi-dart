// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property.dart';

class GetJobDefinitionNodeProperty {
  /// Specifies the node index for the main node of a multi-node parallel job. This node index value must be fewer than the number of nodes.
  final pulumi.Input<int> mainNode;
  /// A list of node ranges and their properties that are associated with a multi-node parallel job.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangeProperty>> nodeRangeProperties;
  /// The number of nodes that are associated with a multi-node parallel job.
  final pulumi.Input<int> numNodes;

  /// Creates a new [GetJobDefinitionNodeProperty].
  /// [mainNode] Specifies the node index for the main node of a multi-node parallel job. This node index value must be fewer than the number of nodes.
  /// [nodeRangeProperties] A list of node ranges and their properties that are associated with a multi-node parallel job.
  /// [numNodes] The number of nodes that are associated with a multi-node parallel job.
  GetJobDefinitionNodeProperty({
    required this.mainNode,
    required this.nodeRangeProperties,
    required this.numNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mainNode': mainNode,
      'nodeRangeProperties': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangeProperty>, List<Map<String, dynamic>>>(nodeRangeProperties, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangeProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numNodes': numNodes,
    };
  }

  factory GetJobDefinitionNodeProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodeProperty(
      mainNode: (map['mainNode'] as int).input(),
      nodeRangeProperties: (pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangeProperty>(map['nodeRangeProperties'], (value) => GetJobDefinitionNodePropertyNodeRangeProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numNodes: (map['numNodes'] as int).input(),
    );
  }
}


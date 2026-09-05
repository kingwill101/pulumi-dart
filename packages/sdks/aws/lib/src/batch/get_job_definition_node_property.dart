// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property.dart';

class GetJobDefinitionNodeProperty {
  /// Node index for the main node of a multi-node parallel job. This node index value must be fewer than the number of nodes.
  final pulumi.Input<int> mainNode;
  /// List of node ranges and their properties that are associated with a multi-node parallel job. See `nodeRangeProperties` below.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangeProperty>> nodeRangeProperties;
  /// Number of nodes that are associated with a multi-node parallel job.
  final pulumi.Input<int> numNodes;

  /// Creates a new [GetJobDefinitionNodeProperty].
  /// [mainNode] Node index for the main node of a multi-node parallel job. This node index value must be fewer than the number of nodes.
  /// [nodeRangeProperties] List of node ranges and their properties that are associated with a multi-node parallel job. See `nodeRangeProperties` below.
  /// [numNodes] Number of nodes that are associated with a multi-node parallel job.
  const GetJobDefinitionNodeProperty({
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
      mainNode: pulumi.Input.fromValue((map['mainNode'] as num).toInt()),
      nodeRangeProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangeProperty>(map['nodeRangeProperties']!, (value) => GetJobDefinitionNodePropertyNodeRangeProperty.fromMap((value as Map).cast<String, dynamic>()))),
      numNodes: pulumi.Input.fromValue((map['numNodes'] as num).toInt()),
    );
  }
}

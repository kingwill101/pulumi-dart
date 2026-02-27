// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_node_property_node_range_property/get_job_definition_node_property_node_range_property.dart';

class GetJobDefinitionNodeProperty {
  /// Specifies the node index for the main node of a multi-node parallel job. This node index value must be fewer than the number of nodes.
  final int mainNode;

  /// A list of node ranges and their properties that are associated with a multi-node parallel job.
  final List<GetJobDefinitionNodePropertyNodeRangeProperty> nodeRangeProperties;

  /// The number of nodes that are associated with a multi-node parallel job.
  final int numNodes;

  GetJobDefinitionNodeProperty({
    required this.mainNode,
    required this.nodeRangeProperties,
    required this.numNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mainNode'] = mainNode;
    map['nodeRangeProperties'] = pulumi.Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangeProperty,
        Map<String, dynamic>>(nodeRangeProperties, (value) => value.toMap());
    map['numNodes'] = numNodes;
    return map;
  }

  factory GetJobDefinitionNodeProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodeProperty(
      mainNode: map['mainNode'] as int,
      nodeRangeProperties: pulumi.Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangeProperty>(
          map['nodeRangeProperties'],
          (value) => GetJobDefinitionNodePropertyNodeRangeProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
      numNodes: map['numNodes'] as int,
    );
  }
}

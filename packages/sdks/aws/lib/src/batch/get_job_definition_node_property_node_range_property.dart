// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_node_property_node_range_property_container.dart';

class GetJobDefinitionNodePropertyNodeRangeProperty {
  /// Container details for the node range. See `container` below.
  final pulumi.Input<List<GetJobDefinitionNodePropertyNodeRangePropertyContainer>> containers;
  /// Range of nodes, using node index values. A range of 0:3 indicates nodes with index values of 0 through 3.
  final pulumi.Input<String> targetNodes;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangeProperty].
  /// [containers] Container details for the node range. See `container` below.
  /// [targetNodes] Range of nodes, using node index values. A range of 0:3 indicates nodes with index values of 0 through 3.
  const GetJobDefinitionNodePropertyNodeRangeProperty({
    required this.containers,
    required this.targetNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<GetJobDefinitionNodePropertyNodeRangePropertyContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetNodes': targetNodes,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangeProperty.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangeProperty(
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionNodePropertyNodeRangePropertyContainer>(map['containers']!, (value) => GetJobDefinitionNodePropertyNodeRangePropertyContainer.fromMap((value as Map).cast<String, dynamic>()))),
      targetNodes: pulumi.Input.fromValue(map['targetNodes'] as String),
    );
  }
}

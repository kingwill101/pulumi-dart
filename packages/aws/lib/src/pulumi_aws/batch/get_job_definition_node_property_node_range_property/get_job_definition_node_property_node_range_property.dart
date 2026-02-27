// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_definition_node_property_node_range_property_container/get_job_definition_node_property_node_range_property_container.dart';

class GetJobDefinitionNodePropertyNodeRangeProperty {
  /// The container details for the node range.
  final List<GetJobDefinitionNodePropertyNodeRangePropertyContainer> containers;

  /// The range of nodes, using node index values. A range of 0:3 indicates nodes with index values of 0 through 3. I
  final String targetNodes;

  GetJobDefinitionNodePropertyNodeRangeProperty({
    required this.containers,
    required this.targetNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] = pulumi.Input.encodeList<
        GetJobDefinitionNodePropertyNodeRangePropertyContainer,
        Map<String, dynamic>>(containers, (value) => value.toMap());
    map['targetNodes'] = targetNodes;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangeProperty.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangeProperty(
      containers: pulumi.Input.decodeList<
              GetJobDefinitionNodePropertyNodeRangePropertyContainer>(
          map['containers'],
          (value) =>
              GetJobDefinitionNodePropertyNodeRangePropertyContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetNodes: map['targetNodes'] as String,
    );
  }
}

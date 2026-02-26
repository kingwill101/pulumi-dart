// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_db_nodes_db_node_property/get_db_nodes_db_node_property.dart';

class GetDbNodesDbNode {
  /// The dbnode name
  final String name;
  final List<GetDbNodesDbNodeProperty> properties;

  GetDbNodesDbNode({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['properties'] =
        Input.encodeList<GetDbNodesDbNodeProperty, Map<String, dynamic>>(
            properties, (value) => value.toMap());
    return map;
  }

  factory GetDbNodesDbNode.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNode(
      name: map['name'] as String,
      properties: Input.decodeList<GetDbNodesDbNodeProperty>(
          map['properties'],
          (value) => GetDbNodesDbNodeProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

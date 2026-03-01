// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node_property.dart';

class GetDbNodesDbNode {
  /// The dbnode name
  final String name;
  final List<GetDbNodesDbNodeProperty> properties;

  /// Creates a new [GetDbNodesDbNode].
  /// [name] The dbnode name
  /// [properties] Required.
  GetDbNodesDbNode({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.encodeList<GetDbNodesDbNodeProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GetDbNodesDbNode.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNode(
      name: map['name'] as String,
      properties: pulumi.Input.decodeList<GetDbNodesDbNodeProperty>(map['properties'], (value) => GetDbNodesDbNodeProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


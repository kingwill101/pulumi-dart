// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Graph resource object
class GraphResource {
  /// Name of the Cosmos DB Graph
  final pulumi.Input<String> id;

  /// Creates a new [GraphResource].
  /// [id] Name of the Cosmos DB Graph
  GraphResource({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GraphResource.fromMap(Map<String, dynamic> map) {
    return GraphResource(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}


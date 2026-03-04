// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphResourceGetPropertiesResponseResource {
  /// Name of the Cosmos DB Graph
  final pulumi.Input<String> id;

  /// Creates a new [GraphResourceGetPropertiesResponseResource].
  /// [id] Name of the Cosmos DB Graph
  GraphResourceGetPropertiesResponseResource({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GraphResourceGetPropertiesResponseResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GraphResourceGetPropertiesResponseResource(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

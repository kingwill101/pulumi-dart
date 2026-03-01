// ignore_for_file: unused_element, unnecessary_cast


class GraphResourceGetPropertiesResponseResource {
  /// Name of the Cosmos DB Graph
  final String id;

  /// Creates a new [GraphResourceGetPropertiesResponseResource].
  /// [id] Name of the Cosmos DB Graph
  GraphResourceGetPropertiesResponseResource({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GraphResourceGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return GraphResourceGetPropertiesResponseResource(
      id: map['id'] as String,
    );
  }
}


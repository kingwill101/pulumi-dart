// ignore_for_file: unused_element, unnecessary_cast


/// The cluster definition.
class ClusterDefinitionResponse {
  /// The link to the blueprint.
  final String? blueprint;
  /// The versions of different services in the cluster.
  final Map<String, String>? componentVersion;
  /// The cluster configurations.
  final dynamic configurations;
  /// The type of cluster.
  final String? kind;

  /// Creates a new [ClusterDefinitionResponse].
  /// [blueprint] The link to the blueprint.
  /// [componentVersion] The versions of different services in the cluster.
  /// [configurations] The cluster configurations.
  /// [kind] The type of cluster.
  ClusterDefinitionResponse({
    this.blueprint,
    this.componentVersion,
    this.configurations,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprint': ?blueprint,
      'componentVersion': ?componentVersion,
      'configurations': ?configurations,
      'kind': ?kind,
    };
  }

  factory ClusterDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterDefinitionResponse(
      blueprint: map['blueprint'] == null ? null : map['blueprint'] as String,
      componentVersion: map['componentVersion'] == null ? null : (map['componentVersion'] as Map).cast<String, String>(),
      configurations: map['configurations'] == null ? null : map['configurations'],
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}


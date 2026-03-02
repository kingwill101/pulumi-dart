// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cluster definition.
class ClusterDefinitionResponse {
  /// The link to the blueprint.
  final pulumi.Input<String>? blueprint;
  /// The versions of different services in the cluster.
  final pulumi.Input<Map<String, String>>? componentVersion;
  /// The cluster configurations.
  final pulumi.Input<dynamic>? configurations;
  /// The type of cluster.
  final pulumi.Input<String>? kind;

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
      blueprint: map['blueprint'] == null ? null : (map['blueprint'] as String).input(),
      componentVersion: map['componentVersion'] == null ? null : ((map['componentVersion'] as Map).cast<String, String>()).input(),
      configurations: map['configurations'] == null ? null : (map['configurations']).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}


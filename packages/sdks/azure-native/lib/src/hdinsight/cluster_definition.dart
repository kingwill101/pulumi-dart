// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cluster definition.
class ClusterDefinition {
  /// The link to the blueprint.
  final pulumi.Input<String?>? blueprint;
  /// The versions of different services in the cluster.
  final pulumi.Input<Map<String, String>?>? componentVersion;
  /// The cluster configurations.
  final pulumi.Input<dynamic>? configurations;
  /// The type of cluster.
  final pulumi.Input<String?>? kind;

  /// Creates a new [ClusterDefinition].
  /// [blueprint] The link to the blueprint.
  /// [componentVersion] The versions of different services in the cluster.
  /// [configurations] The cluster configurations.
  /// [kind] The type of cluster.
  const ClusterDefinition({
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

  factory ClusterDefinition.fromMap(Map<String, dynamic> map) {
    return ClusterDefinition(
      blueprint: (() { final guardedValue = map['blueprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentVersion: (() { final guardedValue = map['componentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

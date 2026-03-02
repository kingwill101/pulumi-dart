// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object reference to a Kubernetes object on a cluster
class ObjectReferenceDefinitionResponse {
  /// Name of the object
  final pulumi.Input<String>? name;
  /// Namespace of the object
  final pulumi.Input<String>? namespace;

  /// Creates a new [ObjectReferenceDefinitionResponse].
  /// [name] Name of the object
  /// [namespace] Namespace of the object
  ObjectReferenceDefinitionResponse({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory ObjectReferenceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ObjectReferenceDefinitionResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}


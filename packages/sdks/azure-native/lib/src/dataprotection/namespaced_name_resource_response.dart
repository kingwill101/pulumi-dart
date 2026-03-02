// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class to refer resources which contains namespace and name
class NamespacedNameResourceResponse {
  /// Name of the resource
  final pulumi.Input<String>? name;
  /// Namespace in which the resource exists
  final pulumi.Input<String>? namespace;

  /// Creates a new [NamespacedNameResourceResponse].
  /// [name] Name of the resource
  /// [namespace] Namespace in which the resource exists
  NamespacedNameResourceResponse({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory NamespacedNameResourceResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedNameResourceResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class K8sActiveDirectoryResponseConnector {
  /// Name of the connector
  final pulumi.Input<String>? name;
  /// Name space of the connector
  final pulumi.Input<String>? namespace;

  /// Creates a new [K8sActiveDirectoryResponseConnector].
  /// [name] Name of the connector
  /// [namespace] Name space of the connector
  K8sActiveDirectoryResponseConnector({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory K8sActiveDirectoryResponseConnector.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectoryResponseConnector(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}


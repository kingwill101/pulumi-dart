// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class K8sActiveDirectoryConnector {
  /// Name of the connector
  final pulumi.Input<String>? name;
  /// Name space of the connector
  final pulumi.Input<String>? namespace;

  /// Creates a new [K8sActiveDirectoryConnector].
  /// [name] Name of the connector
  /// [namespace] Name space of the connector
  const K8sActiveDirectoryConnector({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory K8sActiveDirectoryConnector.fromMap(Map<String, dynamic> map) {
    return K8sActiveDirectoryConnector(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class K8sActiveDirectoryConnector {
  /// Name of the connector
  final String? name;
  /// Name space of the connector
  final String? namespace;

  /// Creates a new [K8sActiveDirectoryConnector].
  /// [name] Name of the connector
  /// [namespace] Name space of the connector
  K8sActiveDirectoryConnector({
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
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}


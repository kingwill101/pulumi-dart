// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterProxyConfigKubernetesSecret {
  /// Name of the kubernetes secret containing the proxy config.
  final String name;

  /// Namespace of the kubernetes secret containing the proxy config.
  final String namespace;

  /// Creates a new [AttachedClusterProxyConfigKubernetesSecret].
  /// [name] Name of the kubernetes secret containing the proxy config.
  /// [namespace] Namespace of the kubernetes secret containing the proxy config.
  AttachedClusterProxyConfigKubernetesSecret({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'namespace': namespace};
  }

  factory AttachedClusterProxyConfigKubernetesSecret.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttachedClusterProxyConfigKubernetesSecret(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterProxyConfigKubernetesSecret {
  /// Name of the kubernetes secret containing the proxy config.
  final String name;

  /// Namespace of the kubernetes secret containing the proxy config.
  final String namespace;

  AttachedClusterProxyConfigKubernetesSecret({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespace'] = namespace;
    return map;
  }

  factory AttachedClusterProxyConfigKubernetesSecret.fromMap(
      Map<String, dynamic> map) {
    return AttachedClusterProxyConfigKubernetesSecret(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

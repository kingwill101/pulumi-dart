// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a namespaced resource in Kubernetes.
class NamespacedNameResponse {
  /// Optional. The name of the Kubernetes resource.
  final String name;

  /// Optional. The Namespace of the Kubernetes resource.
  final String namespace;

  NamespacedNameResponse({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespace'] = namespace;
    return map;
  }

  factory NamespacedNameResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedNameResponse(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

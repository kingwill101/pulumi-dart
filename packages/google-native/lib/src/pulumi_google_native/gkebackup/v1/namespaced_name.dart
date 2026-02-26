// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a namespaced resource in Kubernetes.
class NamespacedName {
  /// Optional. The name of the Kubernetes resource.
  final String? name;

  /// Optional. The Namespace of the Kubernetes resource.
  final String? namespace;

  NamespacedName({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    return map;
  }

  factory NamespacedName.fromMap(Map<String, dynamic> map) {
    return NamespacedName(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

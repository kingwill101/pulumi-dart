// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigSelectedApplicationsNamespacedName {
  /// The name of a Kubernetes Resource.
  final String name;

  /// The namespace of a Kubernetes Resource.
  final String namespace;

  RestorePlanRestoreConfigSelectedApplicationsNamespacedName({
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespace'] = namespace;
    return map;
  }

  factory RestorePlanRestoreConfigSelectedApplicationsNamespacedName.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigSelectedApplicationsNamespacedName(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class RestorePlanRestoreConfigSelectedNamespaces {
  /// A list of Kubernetes Namespaces.
  final List<String> namespaces;

  /// Creates a new [RestorePlanRestoreConfigSelectedNamespaces].
  /// [namespaces] A list of Kubernetes Namespaces.
  RestorePlanRestoreConfigSelectedNamespaces({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': namespaces,
    };
  }

  factory RestorePlanRestoreConfigSelectedNamespaces.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigSelectedNamespaces(
      namespaces: (map['namespaces'] as List).cast<String>(),
    );
  }
}


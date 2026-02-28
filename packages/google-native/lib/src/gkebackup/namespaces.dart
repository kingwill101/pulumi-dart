// ignore_for_file: unused_element, unnecessary_cast

/// A list of Kubernetes Namespaces
class Namespaces {
  /// Optional. A list of Kubernetes Namespaces
  final List<String>? namespaces;

  /// Creates a new [Namespaces].
  /// [namespaces] Optional. A list of Kubernetes Namespaces
  Namespaces({
    this.namespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespacesValue = namespaces;
    if (namespacesValue != null) {
      map['namespaces'] = namespacesValue;
    }
    return map;
  }

  factory Namespaces.fromMap(Map<String, dynamic> map) {
    return Namespaces(
      namespaces: map['namespaces'] == null
          ? null
          : (map['namespaces'] as List).cast<String>(),
    );
  }
}

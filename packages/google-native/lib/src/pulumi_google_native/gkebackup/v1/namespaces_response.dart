// ignore_for_file: unused_element, unnecessary_cast

/// A list of Kubernetes Namespaces
class NamespacesResponse {
  /// Optional. A list of Kubernetes Namespaces
  final List<String> namespaces;

  NamespacesResponse({
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespaces'] = namespaces;
    return map;
  }

  factory NamespacesResponse.fromMap(Map<String, dynamic> map) {
    return NamespacesResponse(
      namespaces: (map['namespaces'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class AccessPolicyAssociationAccessScope {
  /// The namespaces to which the access scope applies when type is namespace.
  final List<String>? namespaces;
  /// Valid values are `namespace` or `cluster`.
  final String type;

  /// Creates a new [AccessPolicyAssociationAccessScope].
  /// [namespaces] The namespaces to which the access scope applies when type is namespace.
  /// [type] Valid values are `namespace` or `cluster`.
  AccessPolicyAssociationAccessScope({
    this.namespaces,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': ?namespaces,
      'type': type,
    };
  }

  factory AccessPolicyAssociationAccessScope.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationAccessScope(
      namespaces: map['namespaces'] == null ? null : (map['namespaces'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}


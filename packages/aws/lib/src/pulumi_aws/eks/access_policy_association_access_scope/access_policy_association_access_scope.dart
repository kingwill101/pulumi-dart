// ignore_for_file: unused_element, unnecessary_cast

class AccessPolicyAssociationAccessScope {
  /// The namespaces to which the access scope applies when type is namespace.
  final List<String>? namespaces;

  /// Valid values are <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span> or <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span>.
  final String type;

  AccessPolicyAssociationAccessScope({
    this.namespaces,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespacesValue = namespaces;
    if (namespacesValue != null) {
      map['namespaces'] = namespacesValue;
    }
    map['type'] = type;
    return map;
  }

  factory AccessPolicyAssociationAccessScope.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationAccessScope(
      namespaces: map['namespaces'] == null
          ? null
          : (map['namespaces'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

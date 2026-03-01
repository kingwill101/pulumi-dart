// ignore_for_file: unused_element, unnecessary_cast


/// RoleRef contains information that points to the role being used
class RoleRefPatch {
  /// APIGroup is the group for the resource being referenced
  final String? apiGroup;
  /// Kind is the type of resource being referenced
  final String? kind;
  /// Name is the name of resource being referenced
  final String? name;

  /// Creates a new [RoleRefPatch].
  /// [apiGroup] APIGroup is the group for the resource being referenced
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  RoleRefPatch({
    this.apiGroup,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory RoleRefPatch.fromMap(Map<String, dynamic> map) {
    return RoleRefPatch(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


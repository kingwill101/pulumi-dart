// ignore_for_file: unused_element, unnecessary_cast


class GetAclsAcl {
  /// The ID of the ACL. For example "acl-xxx".
  final String id;
  /// The name of the Acl.
  final String name;

  /// Creates a new [GetAclsAcl].
  /// [id] The ID of the ACL. For example "acl-xxx".
  /// [name] The name of the Acl.
  GetAclsAcl({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetAclsAcl(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}


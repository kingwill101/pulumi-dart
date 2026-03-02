// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAclsAcl {
  /// The ID of the ACL. For example "acl-xxx".
  final pulumi.Input<String> id;
  /// The name of the Acl.
  final pulumi.Input<String> name;

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
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}


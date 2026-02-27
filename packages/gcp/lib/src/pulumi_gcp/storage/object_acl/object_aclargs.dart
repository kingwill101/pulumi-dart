// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ObjectACL.
class ObjectACLArgs {
  /// The name of the bucket the object is stored in.
  final Input<String> bucket;

  /// The name of the object to apply the acl to.
  ///
  /// - - -
  final Input<String> object;

  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  final Input<String>? predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefined_acl` is not.
  final Input<List<String>>? roleEntities;

  ObjectACLArgs({
    required this.bucket,
    required this.object,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['object'] = object;
    final predefinedAclValue = predefinedAcl;
    if (predefinedAclValue != null) {
      map['predefinedAcl'] = predefinedAclValue;
    }
    final roleEntitiesValue = roleEntities;
    if (roleEntitiesValue != null) {
      map['roleEntities'] = roleEntitiesValue;
    }
    return map;
  }

  factory ObjectACLArgs.fromMap(Map<String, dynamic> map) {
    return ObjectACLArgs(
      bucket: Input.asInput<String>(map['bucket']),
      object: Input.asInput<String>(map['object']),
      predefinedAcl: Input.asOptionalInput<String>(map['predefinedAcl']),
      roleEntities: Input.asOptionalInput<List<String>>(map['roleEntities']),
    );
  }
}

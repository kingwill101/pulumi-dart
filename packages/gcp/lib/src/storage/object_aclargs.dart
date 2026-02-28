// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_object_acl_object_aclargs_doc}
/// The set of arguments for ObjectACL.
/// {@endtemplate}
/// {@macro pulumi_storage_object_acl_object_aclargs_doc}
class ObjectACLArgs {
  /// The name of the bucket the object is stored in.
  final pulumi.Input<String> bucket;

  /// The name of the object to apply the acl to.
  ///
  /// - - -
  final pulumi.Input<String> object;

  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  /// Creates a new [ObjectACLArgs].
  /// [bucket] The name of the bucket the object is stored in.
  /// [object] The name of the object to apply the acl to.
  /// [predefinedAcl] The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `role_entity` is not.
  /// [roleEntities] List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  ObjectACLArgs({
    required String bucket,
    required String object,
    String? predefinedAcl,
    List<String>? roleEntities,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        object = pulumi.Input.asInput<String>(object),
        predefinedAcl = pulumi.Input.asOptionalInput<String>(predefinedAcl),
        roleEntities = pulumi.Input.asOptionalInput<List<String>>(roleEntities);

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
      bucket: map['bucket'] as String,
      object: map['object'] as String,
      predefinedAcl:
          map['predefinedAcl'] == null ? null : map['predefinedAcl'] as String,
      roleEntities: map['roleEntities'] == null
          ? null
          : (map['roleEntities'] as List).cast<String>(),
    );
  }
}

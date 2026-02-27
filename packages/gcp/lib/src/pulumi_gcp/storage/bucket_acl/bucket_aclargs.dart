// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketACL.
class BucketACLArgs {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  final pulumi.Input<String> bucket;

  /// Configure this ACL to be the default ACL.
  final pulumi.Input<String>? defaultAcl;

  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `role_entity` is not.
  final pulumi.Input<String>? predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefined_acl` is not.
  final pulumi.Input<List<String>>? roleEntities;

  BucketACLArgs({
    required this.bucket,
    this.defaultAcl,
    this.predefinedAcl,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final defaultAclValue = defaultAcl;
    if (defaultAclValue != null) {
      map['defaultAcl'] = defaultAclValue;
    }
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

  factory BucketACLArgs.fromMap(Map<String, dynamic> map) {
    return BucketACLArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      defaultAcl: pulumi.Input.asOptionalInput<String>(map['defaultAcl']),
      predefinedAcl: pulumi.Input.asOptionalInput<String>(map['predefinedAcl']),
      roleEntities:
          pulumi.Input.asOptionalInput<List<String>>(map['roleEntities']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketACL.
class BucketACLArgs {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  final Input<String> bucket;

  /// Configure this ACL to be the default ACL.
  final Input<String>? defaultAcl;

  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if <span pulumi-lang-nodejs="`roleEntity`" pulumi-lang-dotnet="`RoleEntity`" pulumi-lang-go="`roleEntity`" pulumi-lang-python="`role_entity`" pulumi-lang-yaml="`roleEntity`" pulumi-lang-java="`roleEntity`">`role_entity`</span> is not.
  final Input<String>? predefinedAcl;

  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if <span pulumi-lang-nodejs="`predefinedAcl`" pulumi-lang-dotnet="`PredefinedAcl`" pulumi-lang-go="`predefinedAcl`" pulumi-lang-python="`predefined_acl`" pulumi-lang-yaml="`predefinedAcl`" pulumi-lang-java="`predefinedAcl`">`predefined_acl`</span> is not.
  final Input<List<String>>? roleEntities;

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
      bucket: Input.asInput<String>(map['bucket']),
      defaultAcl: Input.asOptionalInput<String>(map['defaultAcl']),
      predefinedAcl: Input.asOptionalInput<String>(map['predefinedAcl']),
      roleEntities: Input.asOptionalInput<List<String>>(map['roleEntities']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAcl resources.
class BucketAclState {
  /// Bucket-level Access Control List (ACL)，Valid values: `private`, `public-read`, `public-read-write`.
  final pulumi.Input<String>? acl;
  /// The name of the bucket to which the current ACL configuration belongs.
  final pulumi.Input<String>? bucket;

  /// Creates a new [BucketAclState].
  /// [acl] Bucket-level Access Control List (ACL)，Valid values: `private`, `public-read`, `public-read-write`.
  /// [bucket] The name of the bucket to which the current ACL configuration belongs.
  BucketAclState({
    this.acl,
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': ?bucket,
    };
  }

  factory BucketAclState.fromMap(Map<String, dynamic> map) {
    return BucketAclState(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


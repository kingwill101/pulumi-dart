// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketOwnershipControlsRule {
  /// Object ownership. Valid values: `BucketOwnerPreferred`, `ObjectWriter` or `BucketOwnerEnforced`. `BucketOwnerPreferred` means objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL. `ObjectWriter` means the uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL. `BucketOwnerEnforced` means the bucket owner automatically owns and has full control over every object in the bucket, and ACLs no longer affect permissions to data in the S3 bucket.
  final pulumi.Input<String> objectOwnership;

  /// Creates a new [BucketOwnershipControlsRule].
  /// [objectOwnership] Object ownership. Valid values: `BucketOwnerPreferred`, `ObjectWriter` or `BucketOwnerEnforced`. `BucketOwnerPreferred` means objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL. `ObjectWriter` means the uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL. `BucketOwnerEnforced` means the bucket owner automatically owns and has full control over every object in the bucket, and ACLs no longer affect permissions to data in the S3 bucket.
  const BucketOwnershipControlsRule({
    required this.objectOwnership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectOwnership': objectOwnership,
    };
  }

  factory BucketOwnershipControlsRule.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsRule(
      objectOwnership: pulumi.Input.fromValue(map['objectOwnership'] as String),
    );
  }
}

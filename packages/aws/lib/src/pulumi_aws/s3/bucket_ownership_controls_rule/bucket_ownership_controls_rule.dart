// ignore_for_file: unused_element, unnecessary_cast

class BucketOwnershipControlsRule {
  /// Object ownership. Valid values: `BucketOwnerPreferred`, `ObjectWriter` or `BucketOwnerEnforced`
  /// * `BucketOwnerPreferred` - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL.
  /// * `ObjectWriter` - Uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL.
  /// * `BucketOwnerEnforced` - Bucket owner automatically owns and has full control over every object in the bucket. ACLs no longer affect permissions to data in the S3 bucket.
  final String objectOwnership;

  BucketOwnershipControlsRule({
    required this.objectOwnership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectOwnership'] = objectOwnership;
    return map;
  }

  factory BucketOwnershipControlsRule.fromMap(Map<String, dynamic> map) {
    return BucketOwnershipControlsRule(
      objectOwnership: map['objectOwnership'] as String,
    );
  }
}

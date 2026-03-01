/// This is a legacy property, and it is not recommended for most use cases. A majority of modern use cases in Amazon S3 no longer require the use of ACLs, and we recommend that you keep ACLs disabled. For more information, see [Controlling object ownership](https://docs.aws.amazon.com//AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.  A canned access control list (ACL) that grants predefined permissions to the bucket. For more information about canned ACLs, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) in the *Amazon S3 User Guide*.  S3 buckets are created with ACLs disabled by default. Therefore, unless you explicitly set the [AWS::S3::OwnershipControls](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrols.html) property to enable ACLs, your resource will fail to deploy with any value other than Private. Use cases requiring ACLs are uncommon.  The majority of access control configurations can be successfully and more easily achieved with bucket policies. For more information, see [AWS::S3::BucketPolicy](https://docs.aws.amazon.com//AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html). For examples of common policy configurations, including S3 Server Access Logs buckets and more, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html) in the *Amazon S3 User Guide*.
enum AccessControl {
  authenticatedRead("AuthenticatedRead"),
  awsExecRead("AwsExecRead"),
  bucketOwnerFullControl("BucketOwnerFullControl"),
  bucketOwnerRead("BucketOwnerRead"),
  logDeliveryWrite("LogDeliveryWrite"),
  private("Private"),
  publicRead("PublicRead"),
  publicReadWrite("PublicReadWrite");

  const AccessControl(this.value);
  final String value;

  static AccessControl fromValue(String value) {
    for (final item in AccessControl.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessControl value: $value');
  }
}


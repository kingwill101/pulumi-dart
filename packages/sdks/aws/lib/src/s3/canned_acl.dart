/// See https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
enum CannedAcl {
  private("private"),
  publicRead("public-read"),
  publicReadWrite("public-read-write"),
  awsExecRead("aws-exec-read"),
  authenticatedRead("authenticated-read"),
  bucketOwnerRead("bucket-owner-read"),
  bucketOwnerFullControl("bucket-owner-full-control"),
  logDeliveryWrite("log-delivery-write");

  const CannedAcl(this.wireValue);
  final String wireValue;

  static CannedAcl fromValue(String value) {
    for (final item in CannedAcl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CannedAcl value: $value');
  }
}


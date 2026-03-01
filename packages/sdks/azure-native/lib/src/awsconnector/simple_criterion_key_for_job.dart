/// Property value
enum SimpleCriterionKeyForJob {
  aCCOUNTID("ACCOUNT_ID"),
  s3BUCKETEFFECTIVEPERMISSION("S3_BUCKET_EFFECTIVE_PERMISSION"),
  s3BUCKETNAME("S3_BUCKET_NAME"),
  s3BUCKETSHAREDACCESS("S3_BUCKET_SHARED_ACCESS");

  const SimpleCriterionKeyForJob(this.value);
  final String value;

  static SimpleCriterionKeyForJob fromValue(String value) {
    for (final item in SimpleCriterionKeyForJob.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SimpleCriterionKeyForJob value: $value');
  }
}


import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SimpleCriterionKeyForJob implements pulumi.PulumiEnum<String> {
  aCCOUNTID("ACCOUNT_ID"),
  s3BUCKETEFFECTIVEPERMISSION("S3_BUCKET_EFFECTIVE_PERMISSION"),
  s3BUCKETNAME("S3_BUCKET_NAME"),
  s3BUCKETSHAREDACCESS("S3_BUCKET_SHARED_ACCESS");

  const SimpleCriterionKeyForJob(this.wireValue);
  @override
  final String wireValue;

  static SimpleCriterionKeyForJob fromValue(String value) {
    for (final item in SimpleCriterionKeyForJob.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SimpleCriterionKeyForJob value: $value');
  }
}

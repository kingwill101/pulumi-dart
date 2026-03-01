// ignore_for_file: unused_element, unnecessary_cast

import 'job_comparator_enum_value.dart';
import 'simple_criterion_key_for_job_enum_value.dart';

/// Definition of SimpleCriterionForJob
class SimpleCriterionForJob {
  /// <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  final JobComparatorEnumValue? comparator;
  /// <p>The property to use in the condition.</p>
  final SimpleCriterionKeyForJobEnumValue? key;
  /// <p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission'>BucketPublicAccess.effectivePermission</a> property of a bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of a bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess'>BucketMetadata.sharedAccess</a> property of a bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.</p>
  final List<String>? values;

  /// Creates a new [SimpleCriterionForJob].
  /// [comparator] <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  /// [key] <p>The property to use in the condition.</p>
  /// [values] <p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission'>BucketPublicAccess.effectivePermission</a> property of a bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of a bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess'>BucketMetadata.sharedAccess</a> property of a bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.</p>
  SimpleCriterionForJob({
    this.comparator,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator == null ? null : comparator!.toMap(),
      'key': ?key == null ? null : key!.toMap(),
      'values': ?values,
    };
  }

  factory SimpleCriterionForJob.fromMap(Map<String, dynamic> map) {
    return SimpleCriterionForJob(
      comparator: map['comparator'] == null ? null : JobComparatorEnumValue.fromMap((map['comparator'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : SimpleCriterionKeyForJobEnumValue.fromMap((map['key'] as Map).cast<String, dynamic>()),
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}


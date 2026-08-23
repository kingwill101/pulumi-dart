// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_comparator_enum_value_response.dart';
import 'simple_criterion_key_for_job_enum_value_response.dart';

/// Definition of SimpleCriterionForJob
class SimpleCriterionForJobResponse {
  /// &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  final pulumi.Input<JobComparatorEnumValueResponse>? comparator;
  /// &lt;p&gt;The property to use in the condition.&lt;/p&gt;
  final pulumi.Input<SimpleCriterionKeyForJobEnumValueResponse>? key;
  /// &lt;p&gt;An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the &lt;a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission'&gt;BucketPublicAccess.effectivePermission&lt;/a&gt; property of a bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_NAME - A string that represents the name of a bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the &lt;a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess'&gt;BucketMetadata.sharedAccess&lt;/a&gt; property of a bucket.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt; &lt;p&gt;Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.&lt;/p&gt;
  final pulumi.Input<List<String>>? values;

  /// Creates a new [SimpleCriterionForJobResponse].
  /// [comparator] &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  /// [key] &lt;p&gt;The property to use in the condition.&lt;/p&gt;
  /// [values] &lt;p&gt;An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the &lt;a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission'&gt;BucketPublicAccess.effectivePermission&lt;/a&gt; property of a bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_NAME - A string that represents the name of a bucket.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the &lt;a href='https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess'&gt;BucketMetadata.sharedAccess&lt;/a&gt; property of a bucket.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt; &lt;p&gt;Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.&lt;/p&gt;
  const SimpleCriterionForJobResponse({
    this.comparator,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?pulumi.Input.mapOptionalInputValue<JobComparatorEnumValueResponse, Map<String, dynamic>>(comparator, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<SimpleCriterionKeyForJobEnumValueResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
      'values': ?values,
    };
  }

  factory SimpleCriterionForJobResponse.fromMap(Map<String, dynamic> map) {
    return SimpleCriterionForJobResponse(
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobComparatorEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleCriterionKeyForJobEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
